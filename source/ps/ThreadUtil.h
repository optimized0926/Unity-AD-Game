/* Copyright (C) 2021 Wildfire Games.
 * This file is part of 0 A.D.
 *
 * 0 A.D. is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * 0 A.D. is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with 0 A.D.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef INCLUDED_THREADUTIL
#define INCLUDED_THREADUTIL

/**
 * Light-weight threading utilities.
 * Implemented in Threading.cpp.
 * Split from Threading because this is included (via profilers) in most files.
 */
namespace Threading
{

/**
 * Returns whether the current thread is the 'main' thread
 * (i.e. matches an earlier call to SetMainThread).
 */
bool IsMainThread();

/**
 * Set the current thread as the 'main' thread.
 * (This is called during engine initialisation.)
 */
void SetMainThread();

}

#endif // INCLUDED_THREADUTIL