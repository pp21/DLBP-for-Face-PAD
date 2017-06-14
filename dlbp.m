% directional local binary pattern
function dlbpfea = dlbp(img, b, config, r, p, mappingtype)

% Reference:
% [1] Z. He, W. Lu., W. Sun, J. Huang, 
% "Digital image splicing detection based on Markov features in DCT and DWT domain,"
% Pattern Recognition, 45(12), 4292-4299 (2012)
% [2] T. Pevny, P. Bas, J. Fridrich, 
% "Steganalysis by subtractive pixel adjacency matrix. 
% IEEE Trans. Inf. Forensics Secur., 5(2), 215-224 (2010)
% [3] T. Ojala, M. Pietikainen, and T. Maenpaa, 
% "Multiresolution gray-scale and rotation invariant texture classification with local binary patterns," 
% IEEE Transactions on Pattern Analysis and Machine Intelligence, vol. 24, no. 7, pp. 971¨C987, Jul 2002.

% Input parameters:
%  img - input image
%  b - directional difference
%  config - direction. Possible values are 1 (0 degree), 2 (45 degree), 3 (90 degree), 4 (135 degree)
%  r - radius of DLBP code
%  p - numbers of neighbors in DLBP code
%  mappingtype - LBP code mode. Possible values for MAPPINGTYPE are
%       'u2'   for uniform LBP
%       'ri'   for rotation-invariant LBP
%       'riu2' for uniform rotation-invariant LBP.

% Output parameters:
%  dlbprst: DLBP feature

d_img = getddi(img, b, config);
mapping = getmapping(p, mappingtype);
dlbpfea = lbp(d_img, r, p, mapping, 'h');

end

