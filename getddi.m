% get directional difference image
function d_img = getddi(img, b, config)

% Reference:
% [1] Z. He, W. Lu., W. Sun, J. Huang, 
% "Digital image splicing detection based on Markov features in DCT and DWT domain,"
% Pattern Recognition, 45(12), 4292-4299 (2012)
% [2] T. Pevny, P. Bas, J. Fridrich, 
% "Steganalysis by subtractive pixel adjacency matrix. 
% IEEE Trans. Inf. Forensics Secur., 5(2), 215-224 (2010)

% Input parameters:
%  img - input image
%  b - directional difference
%  config - direction. Possible values are 1 (0 degree), 2 (45 degree), 3 (90 degree), 4 (135 degree)

% Output parameters:
%  d_img: directional difference image

img = double(img);
[x, y, d] = size(img);
d_img = zeros(x-2*b, y-2*b, d);

if config == 1
    for i = 1:d
        d_img(:, :, i) = img(1+b:x-b, 1+2*b:y, i) - img(1+b:x-b, 1+b:y-b, i);
    end
end

if config == 2
    for i = 1:d
        d_img(:, :, i) = img(1:x-2*b, 1+2*b:y, i) - img(1+b:x-b, 1+b:y-b, i);
    end
end

if config == 3
    for i = 1:d
        d_img(:, :, i) = img(1:x-2*b, 1+b:y-b, i) - img(1+b:x-b, 1+b:y-b, i);
    end
end

if config == 4
    for i = 1:d
        d_img(:, :, i) = img(1:x-2*b, 1:y-2*b, i) - img(1+b:x-b, 1+b:y-b, i);
    end
end

end

