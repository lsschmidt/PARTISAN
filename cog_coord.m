function xy = cog_coord(data, dthresh)
% cog_coord.m
%    Returns the x,y (column,row) coordinate of a binary image's center of gravity.
%    'binary image' is thresholded by the dthresh value, anything greater than
%    dthresh is considered a '1', anything lower is considered a '0'. Thus the input
%    itself doesn't actually have to be boolean.
%
% Note output is x,y, not row,column as Matlab often presents array indices.
%
%
%  Copyright (C) 2018 by M. Hamish Bowman
%  Author: M. Hamish Bowman, Geology Department, University of Otago,
%          Dunedin, New Zealand
%
%  This program is free software licensed under the GPL (>=v3).
%  Read the GPS-3.TXT file that comes with this software for details.
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  This program is free software; you can redistribute it and/or modify it
%  under the terms of the GNU General Public License as published by the
%  Free Software Foundation; either version 3 of the License, or (at your
%  option) any later version.
%  
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License (GPL) for more details.
%  
%  You should have received a copy of the GNU General Public License
%  along with this program; if not, see <http://www.gnu.org/licenses/>.
%

dbool = data > dthresh;

Ri = (1:size(dbool,1))';
Ci = 1:size(dbool,2);

drow = dbool .* Ri;
dcol = dbool .* Ci;

Cgrav_row = sum(sum(drow)) / sum(sum(dbool));
Cgrav_col = sum(sum(dcol)) / sum(sum(dbool));

xy = [Cgrav_col Cgrav_row];

