%
% author: Ke-Wei Ma
% contact: keweima at gmail.com
%

function [x,y] = dft3( h, a, f)
% dft3 A function that returns time domain of a DFT
% given harmonics and amplitude specification.
%
% h is a vector of harmonics
% a is a vector of amplitudes
% f is an arbitrary function

    n = 250;                    % number of steps
    x = linspace(0, 4*pi, n);   % partition time

    i = h' * x;
    y = f(i) .* repmat(a',1,n);  % repmat converts amplitude vector to multiple
                                 % mirrored columns in new matrix
end

