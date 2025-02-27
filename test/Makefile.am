##
#	wrap -- text reformatter
#	test/Makefile.am
#
#	Copyright (C) 2013-2019  Paul J. Lucas
#
#	This program is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	(at your option) any later version.
#
#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
#	You should have received a copy of the GNU General Public License
#	along with this program.  If not, see <http://www.gnu.org/licenses/>.
##

AUTOMAKE_OPTIONS = 1.12			# needed for TEST_LOG_DRIVER

TESTS =	tests/e-mail.regex \
	tests/file.regex \
	tests/ftp.regex \
	tests/http.regex

#
# wrap tests
#
TESTS+= tests/utf8-w77.test \
	tests/utf8-w78.test \
	tests/utf8-w79.test \
	tests/utf8-w80.test \
	tests/wrap-a.test \
	tests/wrap-b.test \
	tests/wrap-b-h1.test \
	tests/wrap-b-t1.test \
	tests/wrap-d.test \
	tests/wrap-dep.test \
	tests/wrap-E1.test \
	tests/wrap-f-F.test \
	tests/wrap-h1-I5.test \
	tests/wrap-H3-t1-T.test \
	tests/wrap-H3.test \
	tests/wrap-I2-m1.test \
	tests/wrap-I2-W.test \
	tests/wrap-I2-w72.test \
	tests/wrap-i2.test \
	tests/wrap-li-01.test \
	tests/wrap-lu-01.test \
	tests/wrap-lu-02.test \
	tests/wrap-lx.test \
	tests/wrap-L-01.test \
	tests/wrap-n.test \
	tests/wrap-n-N.test \
	tests/wrap-P-01.test \
	tests/wrap-P-02.test \
	tests/wrap-P-03.test \
	tests/wrap-t1.test \
	tests/wrap-t11.test \
	tests/wrap-y-01.test \
	tests/wrap-y-02.test \
	tests/wrap--alias-dup.test \
	tests/wrap--alias-no_equal.test \
	tests/wrap--alias-options_exp.test \
	tests/wrap--alias-unclosed_quote.test \
	tests/wrap--alias-unexp_char.test \
	tests/wrap--conf-not_found.test \
	tests/wrap--conf-no_section.test \
	tests/wrap--file-not_found.test \
	tests/wrap--hyphen-01.test \
	tests/wrap--hyphen-02.test \
	tests/wrap--hyphen-03.test \
	tests/wrap--hyphen-04.test \
	tests/wrap--hyphen-05.test \
	tests/wrap--hyphen-06.test \
	tests/wrap--hyphen-07.test \
	tests/wrap--hyphen-08.test \
	tests/wrap--hyphen-U+00AD-01.test \
	tests/wrap--hyphen-U+2010-01.test \
	tests/wrap--long_line-01.test \
	tests/wrap--long_line-02.test \
	tests/wrap--long_line-03.test \
	tests/wrap--long_line-04.test \
	tests/wrap--regex-http-01.test \
	tests/wrap--regex-http-02.test \
	tests/wrap--Markdown-abbr-01.test \
	tests/wrap--Markdown-abbr-02.test \
	tests/wrap--Markdown-abbr-03.test \
	tests/wrap--Markdown-abbr-04.test \
	tests/wrap--Markdown-abbr-05.test \
	tests/wrap--Markdown-atx-01.test \
	tests/wrap--Markdown-atx-02.test \
	tests/wrap--Markdown-atx-03.test \
	tests/wrap--Markdown-atx-04.test \
	tests/wrap--Markdown-code-01.test \
	tests/wrap--Markdown-code-02.test \
	tests/wrap--Markdown-dl-01s.test \
	tests/wrap--Markdown-dl-02s.test \
	tests/wrap--Markdown-dl-03s.test \
	tests/wrap--Markdown-fence-01a.test \
	tests/wrap--Markdown-fence-01b.test \
	tests/wrap--Markdown-fence-01c.test \
	tests/wrap--Markdown-fence-02a.test \
	tests/wrap--Markdown-fence-02b.test \
	tests/wrap--Markdown-fence-02c.test \
	tests/wrap--Markdown-fence-03a.test \
	tests/wrap--Markdown-fence-03b.test \
	tests/wrap--Markdown-fence-03c.test \
	tests/wrap--Markdown-footnote-01.test \
	tests/wrap--Markdown-footnote-02.test \
	tests/wrap--Markdown-hr-01a.test \
	tests/wrap--Markdown-hr-01b.test \
	tests/wrap--Markdown-hr-01c.test \
	tests/wrap--Markdown-hr-02a.test \
	tests/wrap--Markdown-hr-02b.test \
	tests/wrap--Markdown-hr-02c.test \
	tests/wrap--Markdown-hr-03a.test \
	tests/wrap--Markdown-hr-03b.test \
	tests/wrap--Markdown-hr-03c.test \
	tests/wrap--Markdown-html-01.test \
	tests/wrap--Markdown-html-01a.test \
	tests/wrap--Markdown-html-02.test \
	tests/wrap--Markdown-html-02a.test \
	tests/wrap--Markdown-html-03.test \
	tests/wrap--Markdown-html-03a.test \
	tests/wrap--Markdown-html-04.test \
	tests/wrap--Markdown-html-04a.test \
	tests/wrap--Markdown-html-05.test \
	tests/wrap--Markdown-html-06.test \
	tests/wrap--Markdown-html-07.test \
	tests/wrap--Markdown-html-08.test \
	tests/wrap--Markdown-html-09.test \
	tests/wrap--Markdown-html-CDATA-01a.test \
	tests/wrap--Markdown-html-CDATA-01b.test \
	tests/wrap--Markdown-html-CDATA-01c.test \
	tests/wrap--Markdown-html-comment-01a.test \
	tests/wrap--Markdown-html-comment-01b.test \
	tests/wrap--Markdown-html-comment-01c.test \
	tests/wrap--Markdown-html-DOCTYPE-01a.test \
	tests/wrap--Markdown-html-DOCTYPE-01b.test \
	tests/wrap--Markdown-html-DOCTYPE-01c.test \
	tests/wrap--Markdown-html-PI-01a.test \
	tests/wrap--Markdown-html-PI-01b.test \
	tests/wrap--Markdown-html-PI-01c.test \
	tests/wrap--Markdown-html-pre-01.test \
	tests/wrap--Markdown-html-script-01.test \
	tests/wrap--Markdown-html-style-01.test \
	tests/wrap--Markdown-html-style-02.test \
	tests/wrap--Markdown-link-01a.test \
	tests/wrap--Markdown-link-01b.test \
	tests/wrap--Markdown-link-01c.test \
	tests/wrap--Markdown-link-01d.test \
	tests/wrap--Markdown-link-02a.test \
	tests/wrap--Markdown-link-02b.test \
	tests/wrap--Markdown-link-02c.test \
	tests/wrap--Markdown-link-02d.test \
	tests/wrap--Markdown-link-03a.test \
	tests/wrap--Markdown-link-03b.test \
	tests/wrap--Markdown-link-03c.test \
	tests/wrap--Markdown-link-03d.test \
	tests/wrap--Markdown-link-04a.test \
	tests/wrap--Markdown-link-04b.test \
	tests/wrap--Markdown-link-04c.test \
	tests/wrap--Markdown-link-04d.test \
	tests/wrap--Markdown-link-05a.test \
	tests/wrap--Markdown-link-05b.test \
	tests/wrap--Markdown-link-05c.test \
	tests/wrap--Markdown-link-05d.test \
	tests/wrap--Markdown-ol-01s.test \
	tests/wrap--Markdown-ol-02s.test \
	tests/wrap--Markdown-ol-03s.test \
	tests/wrap--Markdown-ol-04s.test \
	tests/wrap--Markdown-ol-06s.test \
	tests/wrap--Markdown-ol-07s.test \
	tests/wrap--Markdown-ol-08s.test \
	tests/wrap--Markdown-ol-09s.test \
	tests/wrap--Markdown-ol-11s.test \
	tests/wrap--Markdown-ol-12s.test \
	tests/wrap--Markdown-ol-ol-01s.test \
	tests/wrap--Markdown-ol-ol-02s.test \
	tests/wrap--Markdown-ol-ol-03s.test \
	tests/wrap--Markdown-ul-01sa.test \
	tests/wrap--Markdown-ul-01sb.test \
	tests/wrap--Markdown-ul-01sc.test \
	tests/wrap--Markdown-ul-02sa.test \
	tests/wrap--Markdown-ul-02sb.test \
	tests/wrap--Markdown-ul-02sc.test \
	tests/wrap--Markdown-ul-03sa.test \
	tests/wrap--Markdown-ul-03sb.test \
	tests/wrap--Markdown-ul-03sc.test \
	tests/wrap--Markdown-ul-04sa.test \
	tests/wrap--Markdown-nested-01s.test \
	tests/wrap--Markdown-nested-02s.test \
	tests/wrap--Markdown-Setext-01.test \
	tests/wrap--Markdown-Setext-02.test \
	tests/wrap--Markdown-Setext-03.test \
	tests/wrap--Markdown-Setext-04.test \
	tests/wrap--Markdown-Setext-05.test \
	tests/wrap--Markdown-table-01.test \
	tests/wrap--Markdown-table-02.test \
	tests/wrap--Markdown-table-03.test \
	tests/wrap--Markdown-table-04.test \
	tests/wrap--Markdown-table-05.test \
	tests/wrap--Markdown-table-06.test \
	tests/wrap--no_options.test \
	tests/wrap--pattern-alias_exp.test \
	tests/wrap--pattern-no_equal.test \
	tests/wrap--pattern-unexp_char.test \
	tests/crlf-01.test \
	tests/crlf-ld-01.test \
	tests/crlf-li-01.test \
	tests/crlf-lw-01.test

#
# wrapc tests
#
TESTS+=	tests/wrapc-01.test \
	tests/wrapc-02.test \
	tests/wrapc-A-01a.test \
	tests/wrapc-A-01b.test \
	tests/wrapc-A-02a.test \
	tests/wrapc-A-02b.test \
	tests/wrapc-A-03a.test \
	tests/wrapc-A-03b.test \
	tests/wrapc-A-04a.test \
	tests/wrapc-A-04b.test \
	tests/wrapc-A-05a.test \
	tests/wrapc-A-05b.test \
	tests/wrapc-A-06.test \
	tests/wrapc-A-07.test \
	tests/wrapc-A-08a.test \
	tests/wrapc-A-08b.test \
	tests/wrapc-A-08c.test \
	tests/wrapc-A-09a.test \
	tests/wrapc-A-10.test \
	tests/wrapc-A-11.test \
	tests/wrapc-A-12.test \
	tests/wrapc-A-13.test \
	tests/wrapc-A-14.test \
	tests/wrapc-A-14s.test \
	tests/wrapc-A-15.test \
	tests/wrapc-A-16.test \
	tests/wrapc-A-17.test \
	tests/wrapc-A-18.test \
	tests/wrapc-A-19.test \
	tests/wrapc-Ax-01.test \
	tests/wrapc-Ax-02.test \
	tests/wrapc-D-01.test \
	tests/wrapc-D-02.test \
	tests/wrapc-b.test \
	tests/wrapc-ux-01.test \
	tests/wrapc-ux-02.test \
	tests/wrapc-x-01.test \
	tests/wrapc-x-02.test \
	tests/wrapc-x-03.test \
	tests/wrapc--block-01.test \
	tests/wrapc--block-02.test \
	tests/wrapc--block-03.test \
	tests/wrapc--box-double-01.test \
	tests/wrapc--box-double-02.test \
	tests/wrapc--box-double-03.test \
	tests/wrapc--box-double-04.test \
	tests/wrapc--box-double-05.test \
	tests/wrapc--box-double-07.test \
	tests/wrapc--box-eol-01.test \
	tests/wrapc--box-eol-02.test \
	tests/wrapc--box-eol-03.test \
	tests/wrapc--box-eol-04.test \
	tests/wrapc--box-eol-05.test \
	tests/wrapc--box-eol-06.test \
	tests/wrapc--box-eol-07.test \
	tests/wrapc--box-single-01.test \
	tests/wrapc--box-single-02.test \
	tests/wrapc--box-single-03.test \
	tests/wrapc--box-single-04.test \
	tests/wrapc--box-single-05.test \
	tests/wrapc--Ada-00.test \
	tests/wrapc--Ada-01.test \
	tests/wrapc--Ada-02.test \
	tests/wrapc--Bash-01.test \
	tests/wrapc--Bash-02.test \
	tests/wrapc--C-00.test \
	tests/wrapc--C-01.test \
	tests/wrapc--C-02.test \
	tests/wrapc--C-03.test \
	tests/wrapc--C-04.test \
	tests/wrapc--C-05.test \
	tests/wrapc--C-06.test \
	tests/wrapc--C-07.test \
	tests/wrapc--C-08.test \
	tests/wrapc--C++-00.test \
	tests/wrapc--C++-01.test \
	tests/wrapc--COBOL-01.test \
	tests/wrapc--COBOL-02.test \
	tests/wrapc--COBOL-03.test \
	tests/wrapc--COBOL-04.test \
	tests/wrapc--COBOL-05.test \
	tests/wrapc--COBOL-06.test \
	tests/wrapc--COBOL-07.test \
	tests/wrapc--COBOL-08.test \
	tests/wrapc--crlf-01.test \
	tests/wrapc--D-01.test \
	tests/wrapc--Forth-01.test \
	tests/wrapc--Forth-04.test \
	tests/wrapc--Fortran-01.test \
	tests/wrapc--Fortran-02.test \
	tests/wrapc--Fortran-03.test \
	tests/wrapc--Fortran-04.test \
	tests/wrapc--Haskell-00.test \
	tests/wrapc--Haskell-01.test \
	tests/wrapc--Haskell-02.test \
	tests/wrapc--Julia-00.test \
	tests/wrapc--Julia-01.test \
	tests/wrapc--Julia-02.test \
	tests/wrapc--Julia-03.test \
	tests/wrapc--Markdown-abbr-01.test \
	tests/wrapc--Markdown-abbr-02.test \
	tests/wrapc--Markdown-abbr-03.test \
	tests/wrapc--Markdown-abbr-04.test \
	tests/wrapc--Markdown-abbr-05.test \
	tests/wrapc--Markdown-atx-01.test \
	tests/wrapc--Markdown-atx-02.test \
	tests/wrapc--Markdown-atx-03.test \
	tests/wrapc--Markdown-atx-04.test \
	tests/wrapc--Markdown-code-01.test \
	tests/wrapc--Markdown-code-02.test \
	tests/wrapc--Markdown-code-03.test \
	tests/wrapc--Markdown-dl-01s.test \
	tests/wrapc--Markdown-dl-02s.test \
	tests/wrapc--Markdown-dl-03s.test \
	tests/wrapc--Markdown-fence-01a.test \
	tests/wrapc--Markdown-fence-01b.test \
	tests/wrapc--Markdown-fence-01c.test \
	tests/wrapc--Markdown-footnote-01.test \
	tests/wrapc--Markdown-footnote-02.test \
	tests/wrapc--Markdown-hr-01a.test \
	tests/wrapc--Markdown-hr-01b.test \
	tests/wrapc--Markdown-html-01.test \
	tests/wrapc--Markdown-html-02.test \
	tests/wrapc--Markdown-html-03.test \
	tests/wrapc--Markdown-html-04.test \
	tests/wrapc--Markdown-html-05.test \
	tests/wrapc--Markdown-ol-01s.test \
	tests/wrapc--Markdown-ol-02s.test \
	tests/wrapc--Markdown-ol-03s.test \
	tests/wrapc--Markdown-ol-04s.test \
	tests/wrapc--Markdown-ol-05s.test \
	tests/wrapc--Markdown-ol-06s.test \
	tests/wrapc--Markdown-ol-11s.test \
	tests/wrapc--Markdown-ul-01.test \
	tests/wrapc--Markdown-ul-02.test \
	tests/wrapc--Markdown-ul-03.test \
	tests/wrapc--Markdown-ul-04.test \
	tests/wrapc--Markdown-ul-05.test \
	tests/wrapc--Markdown-ul-06.test \
	tests/wrapc--Markdown-nested-01s.test \
	tests/wrapc--Markdown-nested-02s.test \
	tests/wrapc--Markdown-Setext-01.test \
	tests/wrapc--Markdown-Setext-02.test \
	tests/wrapc--Markdown-Setext-03.test \
	tests/wrapc--Markdown-Setext-04.test \
	tests/wrapc--Markdown-Setext-05.test \
	tests/wrapc--Markdown-table-01.test \
	tests/wrapc--Markdown-table-02.test \
	tests/wrapc--Markdown-table-03.test \
	tests/wrapc--Markdown-table-04.test \
	tests/wrapc--Markdown-table-05.test \
	tests/wrapc--Markdown-table-06.test \
	tests/wrapc--noncomment-01.test \
	tests/wrapc--noncomment-02.test \
	tests/wrapc--Pascal-00.test \
	tests/wrapc--Pascal-01.test \
	tests/wrapc--Pascal-02.test \
	tests/wrapc--Pascal-03.test \
	tests/wrapc--Simula-00.test \
	tests/wrapc--Simula-01.test \
	tests/wrapc--Simula-02.test \
	tests/wrapc--Simula-03.test \
	tests/wrapc--Simula-04.test \
	tests/wrapc--Simula-05.test \
	tests/wrapc--Simula-06.test \
	tests/wrapc--single_line-01.test \
	tests/wrapc--trailing-ws-01.test \
	tests/wrapc--XQuery-01.test \
	tests/wrapc--XQuery-02.test \
	tests/wrapc--XQuery-03.test \
	tests/wrapc--XQuery-04.test \
	tests/wrapc--XQuery-05.test \
	tests/wrapc--XQuery-06.test \
	tests/wrapc--XQuery-07.test

###############################################################################

AM_TESTS_ENVIRONMENT = BUILD_SRC=$(top_builddir)/src; export BUILD_SRC ;
TEST_EXTENSIONS = .regex .test

TEST_LOG_DRIVER = $(srcdir)/run_test.sh
REGEX_LOG_DRIVER = $(srcdir)/run_test.sh

EXTRA_DIST = run_test.sh tests data expected
dist-hook:
	cd $(distdir)/tests && rm -f *.log *.trs

###############################################################################
# vim:set noet sw=8 ts=8:
