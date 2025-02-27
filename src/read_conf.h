/*
**      wrap -- text reformatter
**      src/read_conf.h
**
**      Copyright (C) 2013-2023  Paul J. Lucas
**
**      This program is free software: you can redistribute it and/or modify
**      it under the terms of the GNU General Public License as published by
**      the Free Software Foundation, either version 3 of the License, or
**      (at your option) any later version.
**
**      This program is distributed in the hope that it will be useful,
**      but WITHOUT ANY WARRANTY; without even the implied warranty of
**      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
**      GNU General Public License for more details.
**
**      You should have received a copy of the GNU General Public License
**      along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef wrap_read_conf_H
#define wrap_read_conf_H

/**
 * @file
 * Declares the function to read a **wrap**(1) configuration files.
 */

#include "pjl_config.h"                 /* must go first */

/**
 * @defgroup config-file-group Configuration File
 * Function to read **wrap**(1) a configuration file.
 * @{
 */

////////// extern functions ///////////////////////////////////////////////////

/**
 * Reads a **wrap**(1) configuration file.
 *
 * @param conf_file The full path of the configuration file to read.  If NULL,
 * then the user's home directory is checked for the presence of the default
 * configuration file.  If found, that file is read.
 * @return Returns the full path of the configuration file that was read or
 * NULL if none.
 */
NODISCARD
char const* read_conf( char const *conf_file );

///////////////////////////////////////////////////////////////////////////////

/** @} */

#endif /* wrap_read_conf_H */
/* vim:set et sw=2 ts=2: */
