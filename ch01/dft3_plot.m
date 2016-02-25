% 
% author: Ke-Wei Ma
% contact: keweima at gmail.com
%

function dft3_plot( x, y)
% dft3_plot Plots time domain of a DFT results
% from dft3 call
%
% x is a vector of periods
% y is a matrix of harmonics.  Each row represents
% a single harmonic for each time as defined in vector x.
%


    plot(x, y(1,:), ...        % First harmonic
         x, y(2,:), ...        % Second harmonic
         x, y(3,:), ...
         x, y(4,:), ...
         x, y(5,:), ...
         x, sum(y), 'r');    % The sum of all harmonics!
end
