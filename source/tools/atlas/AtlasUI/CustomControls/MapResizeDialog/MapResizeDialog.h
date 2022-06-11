/* Copyright (C) 2020 Wildfire Games.
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

#ifndef INCLUDED_MAPRESIZEDIALOG
#define INCLUDED_MAPRESIZEDIALOG

#include "PseudoMiniMapPanel.h"

#include <wx/dialog.h>

class MapResizeDialog : public wxDialog
{
public:
	MapResizeDialog(wxWindow* parent);

	/**
	 * Returns selected new size.
	 */
	ssize_t GetNewSize() const;

	/**
	 * Returns the offset from center.
	 */
	wxPoint GetOffset() const;

private:
	void OnCancel(wxCommandEvent& evt);
	void OnOK(wxCommandEvent& evt);
	void OnListBox(wxCommandEvent& evt);

	ssize_t m_NewSize;
	PseudoMiniMapPanel* m_MiniMap;

	DECLARE_EVENT_TABLE();
};

#endif // INCLUDED_MAPRESIZEDIALOG