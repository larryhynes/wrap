#! /bin/sh
##
#       wrap -- text reformatter
#       test/run_test.sh
#
#       Copyright (C) 2013-2019  Paul J. Lucas
#
#       This program is free software: you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation, either version 3 of the License, or
#       (at your option) any later version.
#
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#
#       You should have received a copy of the GNU General Public License
#       along with this program.  If not, see <http://www.gnu.org/licenses/>.
##

# Uncomment the following line for shell tracing.
#set -x

########## Functions ##########################################################

local_basename() {
  ##
  # Autoconf, 11.15:
  #
  # basename
  #   Not all hosts have a working basename. You can use expr instead.
  ##
  expr "//$1" : '.*/\(.*\)'
}

pass() {
  print_result PASS $TEST_NAME
  {
    echo ":test-result: PASS"
    echo ":copy-in-global-log: no"
  } > $TRS_FILE
}

fail() {
  RESULT=$1
  [ "$RESULT" ] || RESULT=FAIL
  print_result $RESULT $TEST_NAME
  {
    echo ":test-result: $RESULT"
    echo ":copy-in-global-log: yes"
  } > $TRS_FILE
}

print_result() {
  RESULT=$1; shift
  COLOR=`eval echo \\$COLOR_$RESULT`
  if [ "$COLOR" ]
  then echo $COLOR$RESULT$COLOR_NONE: $*
  else echo $RESULT: $*
  fi
}

usage() {
  [ "$1" ] && { echo "$ME: $*" >&2; usage; }
  cat >&2 <<END
usage: $ME --test-name=NAME --log-file=PATH --trs-file=PATH [options] TEST-COMMAND
options:
  --color-tests={yes|no}
  --enable-hard-errors={yes|no}
  --expect-failure={yes|no}
END
  exit 1
}

########## Begin ##############################################################

ME=`local_basename "$0"`

[ "$BUILD_SRC" ] || {
  echo "$ME: \$BUILD_SRC not set" >&2
  exit 2
}

########## Process command-line ###############################################

while [ $# -gt 0 ]
do
  case $1 in
  --color-tests)
    COLOR_TESTS=$2; shift
    ;;
  --color-tests=*)
    COLOR_TESTS=`expr "x$1" : 'x--color-tests=\(.*\)'`
    ;;
  --enable-hard-errors)
    ENABLE_HARD_ERRORS=$2; shift
    ;;
  --enable-hard-errors=*)
    ENABLE_HARD_ERRORS=`expr "x$1" : 'x--enable-hard-errors=\(.*\)'`
    ;;
  --expect-failure)
    EXPECT_FAILURE=$2; shift
    ;;
  --expect-failure=*)
    EXPECT_FAILURE=`expr "x$1" : 'x--expect-failure=\(.*\)'`
    ;;
  --help)
    usage
    ;;
  --log-file)
    LOG_FILE=$2; shift
    ;;
  --log-file=*)
    LOG_FILE=`expr "x$1" : 'x--log-file=\(.*\)'`
    ;;
  --test-name)
    TEST_NAME=$2; shift
    ;;
  --test-name=*)
    TEST_NAME=`expr "x$1" : 'x--test-name=\(.*\)'`
    ;;
  --trs-file)
    TRS_FILE=$2; shift
    ;;
  --trs-file=*)
    TRS_FILE=`expr "x$1" : 'x--trs-file=\(.*\)'`
    ;;
  --)
    shift
    break
    ;;
  -*)
    usage
    ;;
  *)
    break
    ;;
  esac
  shift
done

[ "$TEST_NAME" ] || usage "required --test-name not given"
[ "$LOG_FILE"  ] || usage "required --log-file not given"
[ "$TRS_FILE"  ] || usage "required --trs-file not given"
[ $# -ge 1     ] || usage "required test-command not given"
TEST=$1

########## Initialize #########################################################

if [ "$COLOR_TESTS" = yes ]
then
  COLOR_BLUE="[1;34m"
  COLOR_GREEN="[0;32m"
  COLOR_LIGHT_GREEN="[1;32m"
  COLOR_MAGENTA="[0;35m"
  COLOR_NONE="[m"
  COLOR_RED="[0;31m"

  COLOR_ERROR=$COLOR_MAGENTA
  COLOR_FAIL=$COLOR_RED
  COLOR_PASS=$COLOR_GREEN
  COLOR_SKIP=$COLOR_BLUE
  COLOR_XFAIL=$COLOR_LIGHT_GREEN
  COLOR_XPASS=$COLOR_RED
fi

case $EXPECT_FAILURE in
yes) EXPECT_FAILURE=1 ;;
  *) EXPECT_FAILURE=0 ;;
esac

##
# The automake framework sets $srcdir. If it's empty, it means this script was
# called by hand, so set it ourselves.
##
[ "$srcdir" ] || srcdir="."

DATA_DIR=$srcdir/data
EXPECTED_DIR=$srcdir/expected
TEST_NAME=`local_basename "$TEST_NAME"`
OUTPUT=/tmp/wrap_test_output_$$_

########## Run test ###########################################################

run_regex_file() {
  if regex_test $TEST > $LOG_FILE 2>&1
  then pass
  else fail
  fi
}

run_wrap_file() {
  [ "$IFS" ] && IFS_old=$IFS
  IFS='|'; read COMMAND CONFIG OPTIONS INPUT EXPECTED_EXIT < $TEST
  [ "$IFS_old" ] && IFS=$IFS_old

  COMMAND=`echo $COMMAND`               # trims whitespace
  CONFIG=`echo $CONFIG`                 # trims whitespace
  [ "$CONFIG" != /dev/null ] && CONFIG=$DATA_DIR/$CONFIG
  INPUT=$DATA_DIR/`echo $INPUT`         # trims whitespace
  EXPECTED_EXIT=`echo $EXPECTED_EXIT`   # trims whitespace
  case $TEST in
  *crlf*) EXT=crlf ;;
  *)      EXT=txt ;;
  esac
  EXPECTED_OUTPUT="$EXPECTED_DIR/`echo $TEST_NAME | sed s/test$/$EXT/`"

  #echo $COMMAND -c $CONFIG "$OPTIONS" -f $INPUT -o $OUTPUT
  if $COMMAND -c $CONFIG $OPTIONS -f $INPUT -o $OUTPUT 2> $LOG_FILE
  then
    if [ 0 -eq $EXPECTED_EXIT ]
    then
      if diff $EXPECTED_OUTPUT $OUTPUT > $LOG_FILE
      then pass; mv $OUTPUT $LOG_FILE
      else fail
      fi
    else
      fail
    fi
  else
    ACTUAL_EXIT=$?
    if [ $ACTUAL_EXIT -eq $EXPECTED_EXIT ]
    then
      pass
    else
      case $ACTUAL_EXIT in
      0)  fail ;;
      *)  fail ERROR ;;
      esac
    fi
  fi
}

##
# Must put BUILD_SRC first in PATH so we get the correct version of wrap/wrapc.
##
PATH=$BUILD_SRC:$PATH

##
# Must ensure these are unset so neither process will wait for a debugger.
##
unset WRAP_DEBUG
unset WRAPC_DEBUG
unset WRAPC_DEBUG_RSRW
unset WRAPC_DEBUG_RW

trap "x=$?; rm -f /tmp/*_$$_* 2>/dev/null; exit $x" EXIT HUP INT TERM

case $TEST in
*.regex)  run_regex_file ;;
*.test)   run_wrap_file ;;
esac

# vim:set et sw=2 ts=2:
