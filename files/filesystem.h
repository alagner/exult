/*
 *  filesystem.h - Filesystem operations
 *
 *  Copyright (C) 2020 Aleksander Miera
 *  Copyright (C) 2000-2020  The Exult Team
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 */

#ifndef FILESYSTEM_H
#define FILESYSTEM_H

#include <system_error>
#if (__cplusplus >= 201703L)
#include <filesystem>
#else /* (__cplusplus < 201703L) */
#include <cstdio>
#endif /* (__cplusplus < 201703L) */

namespace fs {
using std::error_code;

#if (__cplusplus >= 201703L)
using namespace std::filesystem;
#else /* (__cplusplus < 201703L) */
inline bool exists(
    const string& file,
    std::error_code& err
) noexcept
{
    struct stat sbuf;
    err = stat(name, std::addressof(sbuf));
    return (err.value() == 0);
}
#endif /* (__cplusplus < 201703L) */
} /* namespace fs */

#endif /* FILESYSTEM_H */


