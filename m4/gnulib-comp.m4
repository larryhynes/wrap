# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2002-2023 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <https://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects that use version control, this file can be treated like
# other built files.


# This macro should be invoked from ./configure.ac, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([gl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable

  # Pre-early section.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_REQUIRE([gl_PROG_AR_RANLIB])

  # Code from module absolute-header:
  # Code from module alloca-opt:
  # Code from module assert-h:
  # Code from module attribute:
  # Code from module btowc:
  # Code from module builtin-expect:
  # Code from module c99:
  # Code from module ctype:
  # Code from module errno:
  # Code from module extensions:
  # Code from module extern-inline:
  # Code from module flexmember:
  # Code from module fnmatch:
  # Code from module fnmatch-h:
  # Code from module gen-header:
  # Code from module getopt-gnu:
  # Code from module getopt-posix:
  # Code from module gettext-h:
  # Code from module hard-locale:
  # Code from module idx:
  # Code from module include_next:
  # Code from module intprops:
  # Code from module inttypes-incomplete:
  # Code from module isblank:
  # Code from module libc-config:
  # Code from module limits-h:
  # Code from module localcharset:
  # Code from module locale:
  # Code from module malloc-posix:
  # Code from module mbrtowc:
  # Code from module mbsinit:
  # Code from module mbsrtowcs:
  # Code from module mbtowc:
  # Code from module memchr:
  # Code from module mempcpy:
  # Code from module multiarch:
  # Code from module nocrash:
  # Code from module setlocale-null:
  # Code from module snippet/_Noreturn:
  # Code from module snippet/arg-nonnull:
  # Code from module snippet/c++defs:
  # Code from module snippet/warn-on-use:
  # Code from module ssize_t:
  # Code from module std-gnu11:
  # Code from module stdbool:
  # Code from module stdckdint:
  # Code from module stddef:
  # Code from module stdint:
  # Code from module stdlib:
  # Code from module stdnoreturn:
  # Code from module strdup-posix:
  # Code from module streq:
  # Code from module strerror:
  # Code from module strerror-override:
  # Code from module string:
  # Code from module strndup:
  # Code from module strnlen:
  # Code from module strnlen1:
  # Code from module sys_types:
  # Code from module sysexits:
  # Code from module unistd:
  # Code from module vararrays:
  # Code from module wchar:
  # Code from module wctype-h:
  # Code from module wmemchr:
  # Code from module wmempcpy:
  # Code from module xalloc-oversized:
])

# This macro should be invoked from ./configure.ac, in the section
# "Check for header files, types and library functions".
AC_DEFUN([gl_INIT],
[
  AM_CONDITIONAL([GL_COND_LIBTOOL], [false])
  gl_cond_libtool=false
  gl_libdeps=
  gl_ltlibdeps=
  gl_m4_base='m4'
  m4_pushdef([AC_LIBOBJ], m4_defn([gl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gl_LIBSOURCES]))
  m4_pushdef([gl_LIBSOURCES_LIST], [])
  m4_pushdef([gl_LIBSOURCES_DIR], [])
  m4_pushdef([GL_MACRO_PREFIX], [gl])
  m4_pushdef([GL_MODULE_INDICATOR_PREFIX], [GL])
  gl_COMMON
  gl_source_base='lib'
  gl_source_base_prefix=
  gl_FUNC_ALLOCA
  gl_CONDITIONAL_HEADER([alloca.h])
  AC_PROG_MKDIR_P
  gl_ASSERT_H
  gl_CONDITIONAL_HEADER([assert.h])
  AC_PROG_MKDIR_P
  gl_FUNC_BTOWC
  gl_CONDITIONAL([GL_COND_OBJ_BTOWC],
                 [test $HAVE_BTOWC = 0 || test $REPLACE_BTOWC = 1])
  AM_COND_IF([GL_COND_OBJ_BTOWC], [
    gl_PREREQ_BTOWC
  ])
  gl_WCHAR_MODULE_INDICATOR([btowc])
  gl___BUILTIN_EXPECT
  gl_CTYPE_H
  gl_CTYPE_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_HEADER_ERRNO_H
  gl_CONDITIONAL_HEADER([errno.h])
  AC_PROG_MKDIR_P
  AC_REQUIRE([gl_EXTERN_INLINE])
  AC_C_FLEXIBLE_ARRAY_MEMBER
  gl_FUNC_FNMATCH_POSIX
  dnl Because of gl_REPLACE_FNMATCH_H:
  gl_CONDITIONAL_HEADER([fnmatch.h])
  if test $HAVE_FNMATCH = 0 || test $REPLACE_FNMATCH = 1; then
    AC_LIBOBJ([fnmatch])
    gl_PREREQ_FNMATCH
  fi
  gl_FNMATCH_MODULE_INDICATOR([fnmatch])
  gl_FNMATCH_H
  gl_FNMATCH_H_REQUIRE_DEFAULTS
  gl_CONDITIONAL_HEADER([fnmatch.h])
  AC_PROG_MKDIR_P
  gl_FUNC_GETOPT_GNU
  dnl Because of the way gl_FUNC_GETOPT_GNU is implemented (the gl_getopt_required
  dnl mechanism), there is no need to do any AC_LIBOBJ or AC_SUBST here; they are
  dnl done in the getopt-posix module.
  gl_FUNC_GETOPT_POSIX
  gl_CONDITIONAL_HEADER([getopt.h])
  gl_CONDITIONAL_HEADER([getopt-cdefs.h])
  AC_PROG_MKDIR_P
  gl_CONDITIONAL([GL_COND_OBJ_GETOPT], [test $REPLACE_GETOPT = 1])
  AM_COND_IF([GL_COND_OBJ_GETOPT], [
    dnl Define the substituted variable GNULIB_UNISTD_H_GETOPT to 1.
    gl_UNISTD_H_REQUIRE_DEFAULTS
    gl_MODULE_INDICATOR_INIT_VARIABLE([GNULIB_UNISTD_H_GETOPT], [1])
  ])
  gl_UNISTD_MODULE_INDICATOR([getopt-posix])
  AC_SUBST([LIBINTL])
  AC_SUBST([LTLIBINTL])
  AC_REQUIRE([gl_FUNC_SETLOCALE_NULL])
  LIB_HARD_LOCALE="$LIB_SETLOCALE_NULL"
  AC_SUBST([LIB_HARD_LOCALE])
  gl_INTTYPES_INCOMPLETE
  gl_INTTYPES_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_FUNC_ISBLANK
  gl_CONDITIONAL([GL_COND_OBJ_ISBLANK], [test $HAVE_ISBLANK = 0])
  gl_MODULE_INDICATOR([isblank])
  gl_CTYPE_MODULE_INDICATOR([isblank])
  gl___INLINE
  gl_LIMITS_H
  gl_CONDITIONAL_HEADER([limits.h])
  AC_PROG_MKDIR_P
  gl_LOCALCHARSET
  dnl For backward compatibility. Some packages still use this.
  LOCALCHARSET_TESTS_ENVIRONMENT=
  AC_SUBST([LOCALCHARSET_TESTS_ENVIRONMENT])
  gl_LOCALE_H
  gl_LOCALE_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  AC_REQUIRE([gl_FUNC_MALLOC_POSIX])
  if test $REPLACE_MALLOC_FOR_MALLOC_POSIX = 1; then
    AC_LIBOBJ([malloc])
  fi
  gl_STDLIB_MODULE_INDICATOR([malloc-posix])
  gl_FUNC_MBRTOWC
  gl_CONDITIONAL([GL_COND_OBJ_MBRTOWC],
                 [test $HAVE_MBRTOWC = 0 || test $REPLACE_MBRTOWC = 1])
  AM_COND_IF([GL_COND_OBJ_MBRTOWC], [
    if test $REPLACE_MBSTATE_T = 1; then
      AC_LIBOBJ([lc-charset-dispatch])
      AC_LIBOBJ([mbtowc-lock])
      gl_PREREQ_MBTOWC_LOCK
    fi
    gl_PREREQ_MBRTOWC
  ])
  gl_WCHAR_MODULE_INDICATOR([mbrtowc])
  gl_FUNC_MBSINIT
  gl_CONDITIONAL([GL_COND_OBJ_MBSINIT],
                 [test $HAVE_MBSINIT = 0 || test $REPLACE_MBSINIT = 1])
  AM_COND_IF([GL_COND_OBJ_MBSINIT], [
    gl_PREREQ_MBSINIT
  ])
  gl_WCHAR_MODULE_INDICATOR([mbsinit])
  gl_FUNC_MBSRTOWCS
  gl_CONDITIONAL([GL_COND_OBJ_MBSRTOWCS],
                 [test $HAVE_MBSRTOWCS = 0 || test $REPLACE_MBSRTOWCS = 1])
  AM_COND_IF([GL_COND_OBJ_MBSRTOWCS], [
    AC_LIBOBJ([mbsrtowcs-state])
    gl_PREREQ_MBSRTOWCS
  ])
  gl_WCHAR_MODULE_INDICATOR([mbsrtowcs])
  gl_FUNC_MBTOWC
  gl_CONDITIONAL([GL_COND_OBJ_MBTOWC],
                 [test $HAVE_MBTOWC = 0 || test $REPLACE_MBTOWC = 1])
  AM_COND_IF([GL_COND_OBJ_MBTOWC], [
    gl_PREREQ_MBTOWC
  ])
  gl_STDLIB_MODULE_INDICATOR([mbtowc])
  gl_FUNC_MEMCHR
  gl_CONDITIONAL([GL_COND_OBJ_MEMCHR], [test $REPLACE_MEMCHR = 1])
  AM_COND_IF([GL_COND_OBJ_MEMCHR], [
    gl_PREREQ_MEMCHR
  ])
  gl_STRING_MODULE_INDICATOR([memchr])
  gl_FUNC_MEMPCPY
  gl_CONDITIONAL([GL_COND_OBJ_MEMPCPY], [test $HAVE_MEMPCPY = 0])
  AM_COND_IF([GL_COND_OBJ_MEMPCPY], [
    gl_PREREQ_MEMPCPY
  ])
  gl_STRING_MODULE_INDICATOR([mempcpy])
  gl_MULTIARCH
  gl_FUNC_SETLOCALE_NULL
  gl_CONDITIONAL([GL_COND_OBJ_SETLOCALE_LOCK],
                 [test $SETLOCALE_NULL_ALL_MTSAFE = 0 || test $SETLOCALE_NULL_ONE_MTSAFE = 0])
  AM_COND_IF([GL_COND_OBJ_SETLOCALE_LOCK], [
    gl_PREREQ_SETLOCALE_LOCK
  ])
  gl_LOCALE_MODULE_INDICATOR([setlocale_null])
  gt_TYPE_SSIZE_T
  gl_C_BOOL
  AC_CHECK_HEADERS_ONCE([stdckdint.h])
  if test $ac_cv_header_stdckdint_h = yes; then
    GL_GENERATE_STDCKDINT_H=false
  else
    GL_GENERATE_STDCKDINT_H=true
  fi
  gl_CONDITIONAL_HEADER([stdckdint.h])
  AC_PROG_MKDIR_P
  gl_STDDEF_H
  gl_STDDEF_H_REQUIRE_DEFAULTS
  gl_CONDITIONAL_HEADER([stddef.h])
  AC_PROG_MKDIR_P
  gl_STDINT_H
  gl_CONDITIONAL_HEADER([stdint.h])
  dnl Because of gl_REPLACE_LIMITS_H:
  gl_CONDITIONAL_HEADER([limits.h])
  AC_PROG_MKDIR_P
  gl_STDLIB_H
  gl_STDLIB_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_STDNORETURN_H
  gl_CONDITIONAL_HEADER([stdnoreturn.h])
  AC_PROG_MKDIR_P
  gl_FUNC_STRDUP_POSIX
  gl_CONDITIONAL([GL_COND_OBJ_STRDUP], [test $REPLACE_STRDUP = 1])
  AM_COND_IF([GL_COND_OBJ_STRDUP], [
    gl_PREREQ_STRDUP
  ])
  gl_STRING_MODULE_INDICATOR([strdup])
  gl_FUNC_STRERROR
  gl_CONDITIONAL([GL_COND_OBJ_STRERROR], [test $REPLACE_STRERROR = 1])
  gl_MODULE_INDICATOR([strerror])
  gl_STRING_MODULE_INDICATOR([strerror])
  AC_REQUIRE([gl_HEADER_ERRNO_H])
  AC_REQUIRE([gl_FUNC_STRERROR_0])
  gl_CONDITIONAL([GL_COND_OBJ_STRERROR_OVERRIDE],
                 [test -n "$ERRNO_H" || test $REPLACE_STRERROR_0 = 1])
  AM_COND_IF([GL_COND_OBJ_STRERROR_OVERRIDE], [
    gl_PREREQ_SYS_H_WINSOCK2
  ])
  gl_STRING_H
  gl_STRING_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_FUNC_STRNDUP
  gl_CONDITIONAL([GL_COND_OBJ_STRNDUP],
                 [test $HAVE_STRNDUP = 0 || test $REPLACE_STRNDUP = 1])
  gl_STRING_MODULE_INDICATOR([strndup])
  gl_FUNC_STRNLEN
  gl_CONDITIONAL([GL_COND_OBJ_STRNLEN],
                 [test $HAVE_DECL_STRNLEN = 0 || test $REPLACE_STRNLEN = 1])
  AM_COND_IF([GL_COND_OBJ_STRNLEN], [
    gl_PREREQ_STRNLEN
  ])
  gl_STRING_MODULE_INDICATOR([strnlen])
  gl_SYS_TYPES_H
  gl_SYS_TYPES_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_SYSEXITS
  gl_CONDITIONAL_HEADER([sysexits.h])
  AC_PROG_MKDIR_P
  gl_UNISTD_H
  gl_UNISTD_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  AC_C_VARARRAYS
  gl_WCHAR_H
  gl_WCHAR_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_WCTYPE_H
  gl_WCTYPE_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_FUNC_WMEMCHR
  gl_CONDITIONAL([GL_COND_OBJ_WMEMCHR], [test $HAVE_WMEMCHR = 0])
  gl_WCHAR_MODULE_INDICATOR([wmemchr])
  gl_FUNC_WMEMPCPY
  gl_CONDITIONAL([GL_COND_OBJ_WMEMPCPY], [test $HAVE_WMEMPCPY = 0])
  gl_WCHAR_MODULE_INDICATOR([wmempcpy])
  # End of code from modules
  m4_ifval(gl_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gl_LIBSOURCES_DIR])[ ||
      for gl_file in ]gl_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([GL_MODULE_INDICATOR_PREFIX])
  m4_popdef([GL_MACRO_PREFIX])
  m4_popdef([gl_LIBSOURCES_DIR])
  m4_popdef([gl_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gl_libobjs=
    gl_ltlibobjs=
    gl_libobjdeps=
    if test -n "$gl_LIBOBJS"; then
      # Remove the extension.
changequote(,)dnl
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      sed_dirname1='s,//*,/,g'
      sed_dirname2='s,\(.\)/$,\1,'
      sed_dirname3='s,^[^/]*$,.,'
      sed_dirname4='s,\(.\)/[^/]*$,\1,'
      sed_basename1='s,.*/,,'
changequote([, ])dnl
      for i in `for i in $gl_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gl_libobjs="$gl_libobjs $i.$ac_objext"
        gl_ltlibobjs="$gl_ltlibobjs $i.lo"
        i_dir=`echo "$i" | sed -e "$sed_dirname1" -e "$sed_dirname2" -e "$sed_dirname3" -e "$sed_dirname4"`
        i_base=`echo "$i" | sed -e "$sed_basename1"`
        gl_libobjdeps="$gl_libobjdeps $i_dir/\$(DEPDIR)/$i_base.Po"
      done
    fi
    AC_SUBST([gl_LIBOBJS], [$gl_libobjs])
    AC_SUBST([gl_LTLIBOBJS], [$gl_ltlibobjs])
    AC_SUBST([gl_LIBOBJDEPS], [$gl_libobjdeps])
  ])
  gltests_libdeps=
  gltests_ltlibdeps=
  m4_pushdef([AC_LIBOBJ], m4_defn([gltests_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gltests_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gltests_LIBSOURCES]))
  m4_pushdef([gltests_LIBSOURCES_LIST], [])
  m4_pushdef([gltests_LIBSOURCES_DIR], [])
  m4_pushdef([GL_MACRO_PREFIX], [gltests])
  m4_pushdef([GL_MODULE_INDICATOR_PREFIX], [GL])
  gl_COMMON
  gl_source_base='tests'
  gl_source_base_prefix=
changequote(,)dnl
  gltests_WITNESS=IN_`echo "${PACKAGE-$PACKAGE_TARNAME}" | LC_ALL=C tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ | LC_ALL=C sed -e 's/[^A-Z0-9_]/_/g'`_GNULIB_TESTS
changequote([, ])dnl
  AC_SUBST([gltests_WITNESS])
  gl_module_indicator_condition=$gltests_WITNESS
  m4_pushdef([gl_MODULE_INDICATOR_CONDITION], [$gl_module_indicator_condition])
  m4_popdef([gl_MODULE_INDICATOR_CONDITION])
  m4_ifval(gltests_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gltests_LIBSOURCES_DIR])[ ||
      for gl_file in ]gltests_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([GL_MODULE_INDICATOR_PREFIX])
  m4_popdef([GL_MACRO_PREFIX])
  m4_popdef([gltests_LIBSOURCES_DIR])
  m4_popdef([gltests_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gltests_libobjs=
    gltests_ltlibobjs=
    gltests_libobjdeps=
    if test -n "$gltests_LIBOBJS"; then
      # Remove the extension.
changequote(,)dnl
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      sed_dirname1='s,//*,/,g'
      sed_dirname2='s,\(.\)/$,\1,'
      sed_dirname3='s,^[^/]*$,.,'
      sed_dirname4='s,\(.\)/[^/]*$,\1,'
      sed_basename1='s,.*/,,'
changequote([, ])dnl
      for i in `for i in $gltests_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gltests_libobjs="$gltests_libobjs $i.$ac_objext"
        gltests_ltlibobjs="$gltests_ltlibobjs $i.lo"
        i_dir=`echo "$i" | sed -e "$sed_dirname1" -e "$sed_dirname2" -e "$sed_dirname3" -e "$sed_dirname4"`
        i_base=`echo "$i" | sed -e "$sed_basename1"`
        gltests_libobjdeps="$gltests_libobjdeps $i_dir/\$(DEPDIR)/$i_base.Po"
      done
    fi
    AC_SUBST([gltests_LIBOBJS], [$gltests_libobjs])
    AC_SUBST([gltests_LTLIBOBJS], [$gltests_ltlibobjs])
    AC_SUBST([gltests_LIBOBJDEPS], [$gltests_libobjdeps])
  ])
  AC_REQUIRE([gl_CC_GNULIB_WARNINGS])
  LIBGNU_LIBDEPS="$gl_libdeps"
  AC_SUBST([LIBGNU_LIBDEPS])
  LIBGNU_LTLIBDEPS="$gl_ltlibdeps"
  AC_SUBST([LIBGNU_LTLIBDEPS])
])

# Like AC_LIBOBJ, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_LIBOBJ], [
  AS_LITERAL_IF([$1], [gl_LIBSOURCES([$1.c])])dnl
  gl_LIBOBJS="$gl_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gl_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gl_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gl_LIBSOURCES_DIR], [lib])
      m4_append([gl_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_LIBOBJ], [
  AS_LITERAL_IF([$1], [gltests_LIBSOURCES([$1.c])])dnl
  gltests_LIBOBJS="$gltests_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gltests_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gltests_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gltests_LIBSOURCES_DIR], [tests])
      m4_append([gltests_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([gl_FILE_LIST], [
  lib/_Noreturn.h
  lib/alloca.in.h
  lib/arg-nonnull.h
  lib/assert.in.h
  lib/attribute.h
  lib/btowc.c
  lib/c++defs.h
  lib/cdefs.h
  lib/ctype.in.h
  lib/errno.in.h
  lib/flexmember.h
  lib/fnmatch.c
  lib/fnmatch.in.h
  lib/fnmatch_loop.c
  lib/getopt-cdefs.in.h
  lib/getopt-core.h
  lib/getopt-ext.h
  lib/getopt-pfx-core.h
  lib/getopt-pfx-ext.h
  lib/getopt.c
  lib/getopt.in.h
  lib/getopt1.c
  lib/getopt_int.h
  lib/gettext.h
  lib/hard-locale.c
  lib/hard-locale.h
  lib/idx.h
  lib/intprops-internal.h
  lib/intprops.h
  lib/inttypes.in.h
  lib/isblank.c
  lib/lc-charset-dispatch.c
  lib/lc-charset-dispatch.h
  lib/libc-config.h
  lib/limits.in.h
  lib/localcharset.c
  lib/localcharset.h
  lib/locale.in.h
  lib/malloc.c
  lib/mbrtowc-impl-utf8.h
  lib/mbrtowc-impl.h
  lib/mbrtowc.c
  lib/mbsinit.c
  lib/mbsrtowcs-impl.h
  lib/mbsrtowcs-state.c
  lib/mbsrtowcs.c
  lib/mbtowc-impl.h
  lib/mbtowc-lock.c
  lib/mbtowc-lock.h
  lib/mbtowc.c
  lib/memchr.c
  lib/memchr.valgrind
  lib/mempcpy.c
  lib/setlocale-lock.c
  lib/setlocale_null.c
  lib/setlocale_null.h
  lib/stdckdint.in.h
  lib/stddef.in.h
  lib/stdint.in.h
  lib/stdlib.in.h
  lib/stdnoreturn.in.h
  lib/strdup.c
  lib/streq.h
  lib/strerror-override.c
  lib/strerror-override.h
  lib/strerror.c
  lib/string.in.h
  lib/strndup.c
  lib/strnlen.c
  lib/strnlen1.c
  lib/strnlen1.h
  lib/sys_types.in.h
  lib/sysexits.in.h
  lib/unistd.c
  lib/unistd.in.h
  lib/verify.h
  lib/warn-on-use.h
  lib/wchar.in.h
  lib/wctype-h.c
  lib/wctype.in.h
  lib/windows-initguard.h
  lib/wmemchr-impl.h
  lib/wmemchr.c
  lib/wmempcpy.c
  lib/xalloc-oversized.h
  m4/00gnulib.m4
  m4/__inline.m4
  m4/absolute-header.m4
  m4/alloca.m4
  m4/assert_h.m4
  m4/btowc.m4
  m4/builtin-expect.m4
  m4/c-bool.m4
  m4/codeset.m4
  m4/ctype_h.m4
  m4/errno_h.m4
  m4/extensions.m4
  m4/extern-inline.m4
  m4/flexmember.m4
  m4/fnmatch.m4
  m4/fnmatch_h.m4
  m4/getopt.m4
  m4/gnulib-common.m4
  m4/include_next.m4
  m4/inttypes.m4
  m4/isblank.m4
  m4/limits-h.m4
  m4/localcharset.m4
  m4/locale-fr.m4
  m4/locale-ja.m4
  m4/locale-zh.m4
  m4/locale_h.m4
  m4/malloc.m4
  m4/mbrtowc.m4
  m4/mbsinit.m4
  m4/mbsrtowcs.m4
  m4/mbstate_t.m4
  m4/mbtowc.m4
  m4/memchr.m4
  m4/mempcpy.m4
  m4/mmap-anon.m4
  m4/multiarch.m4
  m4/nocrash.m4
  m4/off_t.m4
  m4/pid_t.m4
  m4/setlocale_null.m4
  m4/ssize_t.m4
  m4/std-gnu11.m4
  m4/stddef_h.m4
  m4/stdint.m4
  m4/stdlib_h.m4
  m4/stdnoreturn.m4
  m4/strdup.m4
  m4/strerror.m4
  m4/string_h.m4
  m4/strndup.m4
  m4/strnlen.m4
  m4/sys_socket_h.m4
  m4/sys_types_h.m4
  m4/sysexits.m4
  m4/threadlib.m4
  m4/unistd_h.m4
  m4/vararrays.m4
  m4/visibility.m4
  m4/warn-on-use.m4
  m4/wchar_h.m4
  m4/wchar_t.m4
  m4/wctype_h.m4
  m4/wint_t.m4
  m4/wmemchr.m4
  m4/wmempcpy.m4
  m4/zzgnulib.m4
])
