% 
% author: Ke-Wei Ma
% contact: keweima at gmail.com
% summary: replicate Fig 1.2
%

clear all;
clf;

h = 1:2:1000;               % odd-harmonics.  1, 3, 5 ... 1,000
a = 1 ./ h;                 % amplitude.  1/1, 1/3, 1/5 ... 1,000

n = 100;
i = linspace(0, 2*pi, n);   % number of steps

j = h' * i;

y = sin(j) .* repmat(a',1,n); % repmat converts amplitude vector to mirrored columns in new matrix

% Plot the first 5 odd harmonics and then the sum of all 
% the harmonics 

plot(i, y(1,:),
     i, y(2,:),
     i, y(3,:),
     i, y(4,:),
     i, y(5,:),
     i, sum(y),"r");

