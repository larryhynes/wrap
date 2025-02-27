/*
**      wrap -- text reformatter
**      src/doxygen.h
**
**      Copyright (C) 2018-2023  Paul J. Lucas
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

#ifndef wrap_doxygen_H
#define wrap_doxygen_H

/**
 * @file
 * Declares macros, data structures, and functions for reformatting
 * [Doxygen](http://www.doxygen.org/) within source code comments.
 */

// local
#include "pjl_config.h"                 /* must go first */

/// @cond DOXYGEN_IGNORE

// standard
#include <stdbool.h>
#include <stddef.h>                     /* for size_t */

/// @endcond

/**
 * @ingroup wrapc-group
 * @defgroup doxygen-group Doxygen Support
 * Macros, data structures, and functions for reformatting
 * [Doxygen](http://www.doxygen.org/) within source code comments.
 * @{
 */

///////////////////////////////////////////////////////////////////////////////

/**
 * Doxygen command name maximum size.
 *
 * @remarks The longest command name is currently `hidecollaborationgraph`.
 */
#define DOX_CMD_NAME_SIZE_MAX     22

/**
 * Doxygen command type.
 */
enum dox_cmd_type {
  /**
   * Doxygen command is "inline" and needs no special treatment; examples
   * include [`\a`](https://www.doxygen.nl/manual/commands.html#cmda),
   * [`\b`](https://www.doxygen.nl/manual/commands.html#cmdb), and
   * [`\c`](https://www.doxygen.nl/manual/commands.html#cmdc).
   */
  DOX_INLINE  = (1u << 0),

  /**
   * Doxygen command should be at the beginning of a line (but isn't forced to
   * be); examples include
   * [`\pure`](https://www.doxygen.nl/manual/commands.html#cmdpure).
   *
   * @remarks
   * @parblock
   * Unlike #DOX_INLINE, `DOX_BOL` commands are prevented from being wrapped
   * onto the previous line.  For example, this text:
   *
   *      Lorem ipsum dolor sit amet,
   *      \pure ligula suspendisse nulla pretium,
   *      rhoncus tempor fermentum,
   *      enim integer ad vestibulum volutpat.
   *
   * will be wrapped as:
   *
   *      Lorem ipsum dolor sit amet,
   *      \pure ligula suspendisse nulla pretium, rhoncus tempor fermentum,
   *      enim integer ad vestibulum volutpat.
   *
   * that is:
   *
   *  + The `\pure` will _not_ be wrapped onto the end of the previous line
   *    (after the "amet") like a #DOX_INLINE command will be --- it is kept at
   *    the beginning of the line.
   *
   *  + However, the rest of the text on the same line as `\pure` as well as
   *    subsequent lines will be wrapped normally.
   * @endparblock
   */
  DOX_BOL     = (1u << 1),

  /**
   * Like #DOX_BOL, but the Doxygen command continues until the end of the
   * line; examples include
   * [`\def`](https://www.doxygen.nl/manual/commands.html#cmddef),
   * [`\hideinitializer`](https://www.doxygen.nl/manual/commands.html#cmdhideinitializer),
   * and [`\sa`](https://www.doxygen.nl/manual/commands.html#cmdsa).
   *
   * @remarks
   * @parblock
   * Like #DOX_BOL commands, `DOX_EOL` commands are prevented from being wrapped
   * onto the previous line.  However, unlike #DOX_BOL commands, `DOX_EOL`
   * commands are _not_ wrapped (are kept verbatim) until the end of the same
   * line.  For example, this text:
   *
   *      Lorem ipsum dolor sit amet,
   *      \def ligula suspendisse nulla pretium,
   *      rhoncus tempor fermentum,
   *      enim integer ad vestibulum volutpat.
   *
   * will be wrapped as:
   *
   *      Lorem ipsum dolor sit amet,
   *      \def ligula suspendisse nulla pretium,
   *      rhoncus tempor fermentum, enim integer ad vestibulum volutpat.
   *
   * that is:
   *
   *  + The `\def` will _not_ be wrapped onto the end of the previous line
   *    (after the "amet") like a #DOX_INLINE command will be --- it is kept at
   *    the beginning of the line.
   *
   *  + The text on the same line as `\def` will _not_ be wrapped at all.
   *
   *  + The text on the line after `\def` will _not_ be wrapped onto the end of
   *    the `\def` line, but otherwise will be wrapped normally.
   * @endparblock
   */
  DOX_EOL     = (1u << 2),

  /**
   * Like #DOX_BOL, but the Doxygen command continues until either the end of
   * the paragraph; or, if it has a corresponding end command, until said
   * command; examples include
   * [`\brief`](https://www.doxygen.nl/manual/commands.html#cmdnrief),
   * [`\details`](https://www.doxygen.nl/manual/commands.html#cmddetails), and
   * [`\param`](https://www.doxygen.nl/manual/commands.html#cmdparam).
   *
   * @remarks This is a conceptually different command type, but it's treated
   * exactly the same as #DOX_BOL.
   */
  DOX_PAR     = (1u << 3),

  /**
   * Like #DOX_PAR, but the Doxygen command continues until its corresponding
   * end command and all text in between is considered preformatted and passed
   * through verbatim; examples include
   * [<tt>\\code</tt>](https://www.doxygen.nl/manual/commands.html#cmdcode),
   * [<tt>\\latexonly</tt>](https://www.doxygen.nl/manual/commands.html#cmdlatexonly),
   * and
   * [<tt>\\verbatim</tt>](https://www.doxygen.nl/manual/commands.html#cmdverbatim).
   * For example, the text:
   *
   *      Lorem ipsum dolor sit amet,
   *      ligula suspendisse nulla pretium,
   *      \code
   *      #include <stdio.h>
   *
   *      int main() {
   *          printf( "hello, world!\n" );
   *      }
   *      \endcode
   *      rhoncus tempor fermentum,
   *      enim integer ad vestibulum volutpat.
   *
   * will be wrapped as:
   *
   *      Lorem ipsum dolor sit amet, ligula suspendisse nulla pretium,
   *      \code
   *      #include <stdio.h>
   *
   *      int main() {
   *          printf( "hello, world!\n" );
   *      }
   *      \endcode
   *      rhoncus tempor fermentum, enim integer ad vestibulum volutpat.
   *
   * that is:
   *
   *  + The text both before <tt>\\code</tt> and after <tt>\\endcode</tt> will
   *    be wrapped normally.
   *
   *  + However, the text between <tt>\\code</tt> and <tt>\\endcode</tt>
   *    (including those lines themselves) will _not_ be wrapped at all and
   *    passed through verbatim.
   */
  DOX_PRE     = (1u << 4),
};
typedef enum dox_cmd_type dox_cmd_type_t;

/**
 * Contains information about a [Doxygen](http://www.doxygen.org/) command.
 *
 * @sa [Special Commands](https://www.doxygen.nl/manual/commands.html)
 */
struct dox_cmd {
  char const     *name;                 ///< Command's name.
  dox_cmd_type_t  type;                 ///< Command's type.
  char const     *end_name;             ///< Corresponding end command, if any.
};
typedef struct dox_cmd dox_cmd_t;

///////////////////////////////////////////////////////////////////////////////

/**
 * Attempts to find \a s among Doxygen's set of commands.
 *
 * @param s The string (without the leading `\` or `@`) that may be a Doxygen
 * command's name.
 * @return Returns a pointer to the Doxygen command or null if not found.
 */
NODISCARD
dox_cmd_t const* dox_find_cmd( char const *s );

/**
 * Attempts to parse a Doxygen command at the start of \a s.
 *
 * @param s The string to parse.
 * @param dox_cmd_name If \a s starts with optional whitespace followed by a
 * Doxygen command, then the command is copied into \a dox_cmd_name (without
 * the leading `\` or `@`).
 * @return Returns `true` only if \a s starts with a Doxygen command.
 */
NODISCARD
bool dox_parse_cmd_name( char const *s, char *dox_cmd_name );

///////////////////////////////////////////////////////////////////////////////

/** @} */

#endif /* wrap_doxygen_H */
/* vim:set et sw=2 ts=2: */
