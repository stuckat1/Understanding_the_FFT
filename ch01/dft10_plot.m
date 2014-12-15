function dft10_plot( x, y)
% dft10_plot Plots time domain of a DFT results
% from dft10 call
%
% x is a vector of periods
% y is a matrix of harmonics.  Each row represents
% a single harmonic for each time as defined in vector x.
%
% Copyright 2013 Ke-Wei Ma
%
% This function was inspired by plots found in
% "Understanding the FFT" by Anders E. Zonst

    plot(x, y(1,:),         % First harmonic
         x, y(2,:),         % Second harmonic
         x, y(3,:),
         x, y(4,:),
         x, y(5,:),
         x, sum(y),"r");    % The sum of all harmonics!
end
