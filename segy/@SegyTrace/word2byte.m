function bl = word2byte(obj, hw)
%Return the byte location for a given header word name
%
% function bl = word2byte(obj, hw)
%
% WORD2BYTE returns the byte location for a given header word name
%
% bl=word2byte(hw)
%
% hw      ... the name of the SEGY header word in obj.HdrDef
% bl      ... byte location for hw
%
% Example, retrieve the SEGY header value stored at byte location 17
% bl = word2byte('TrcNumLine')
%
% Authors: Gary Margrave,
%          Kevin Hall, 2017
%
% NOTE: This SOFTWARE may be used by any individual or corporation for any purpose
% with the exception of re-selling or re-distributing the SOFTWARE.
% By using this software, you are agreeing to the terms detailed in this software's
% Matlab source file.

% BEGIN TERMS OF USE LICENSE
%
% This SOFTWARE is maintained by the CREWES Project at the Department
% of Geology and Geophysics of the University of Calgary, Calgary,
% Alberta, Canada.  The copyright and ownership is jointly held by
% its 'AUTHOR' (identified above) and the CREWES Project.  The CREWES
% project may be contacted via email at:  crewesinfo@crewes.org
%
% The term 'SOFTWARE' refers to the Matlab source code, translations to
% any other computer language, or object code
%
% Terms of use of this SOFTWARE
%
% 1) This SOFTWARE may be used by any individual or corporation for any purpose
%    with the exception of re-selling or re-distributing the SOFTWARE.
%
% 2) The AUTHOR and CREWES must be acknowledged in any resulting publications or
%    presentations
%
% 3) This SOFTWARE is provided "as is" with no warranty of any kind
%    either expressed or implied. CREWES makes no warranties or representation
%    as to its accuracy, completeness, or fitness for any purpose. CREWES
%    is under no obligation to provide support of any kind for this SOFTWARE.
%
% 4) CREWES periodically adds, changes, improves or updates this SOFTWARE without
%    notice. New versions will be made available at www.crewes.org .
%
% 5) Use this SOFTWARE at your own risk.
%
% END TERMS OF USE LICENSE

if ~isfield(obj.HdrStartBytes,hw)
    mm_errordlg(['@Trace/word2byte: Header word ''' hw ''' not found'],...
        'Error',obj.GUI)
else
    bl = obj.HdrStartBytes.(hw);
end

end %end function
