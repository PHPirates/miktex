%% pdftex-miktex-adapter.ch: pdftex.web to MiKTeX change file adapter
%% 
%% Copyright (C) 2021 Christian Schenk
%% 
%% This file is free software; you can redistribute it and/or modify it
%% under the terms of the GNU General Public License as published by the
%% Free Software Foundation; either version 2, or (at your option) any
%% later version.
%% 
%% This file is distributed in the hope that it will be useful, but
%% WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
%% General Public License for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% along with This file; if not, write to the Free Software Foundation,
%% 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

% _____________________________________________________________________________
%
% [1.2]
% _____________________________________________________________________________

@x
@d TeX_banner=='This is TeX, Version 3.141592653' {printed when \TeX\ starts}
@#
@d banner==pdfTeX_banner
@y
@d banner=='This is TeX, Version 3.141592653' {printed when \TeX\ starts}
@z

% _____________________________________________________________________________
%
% [18.254]
% _____________________________________________________________________________

@x
@d tex_int_pars=55 {total number of \TeX's integer parameters}
@#
@d pdftex_first_integer_code = tex_int_pars {base for \pdfTeX's integer parameters}
@y
@d int_pars=55 {total number of integer parameters}
@#
@d etex_int_base=tex_int_pars {base for \eTeX's integer parameters}
@z
