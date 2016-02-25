%
% author: Ke-Wei Ma
% contact: keweima at gmail.com
% summary: replicate Fig 1.4.3
%

clear all;
clf;

h = 1:2:3000;               % odd harmonics.  
a = 1 ./ h.^2;              % amplitude.  1/1, 1/3, 1/5 ... 1,000

n = 500;
i = linspace(0, 4*pi, n);   % number of steps

j = h' * i;

y = sin(j) .* repmat(a',1,n); % repmat converts amplitude vector to mirrored columns in new matrix

% Plot the first 5 harmonics and then the sum of all 
% the harmonics 

figure
plot(i, y(1,:), ...
     i, y(2,:), ...
     i, y(3,:), ...
     i, y(4,:), ...
     i, y(5,:), ...
     i, sum(y), 'r');

title('Fig 1.4.3 - Y = Y + Sin(I*J)/(J*J) for odd terms');
