##
#	wrap -- text reformatter
#	man/man1/Makefile.am
#
#	Copyright (C) 2013-2023  Paul J. Lucas
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

dist_man1_MANS = wrap.1 wrapc.1

show_wrap:
	nroff -man wrap.1 | $(PAGER)

show_wrapc:
	nroff -man -t wrapc.1 | $(PAGER)

# vim:set noet sw=8 ts=8:
