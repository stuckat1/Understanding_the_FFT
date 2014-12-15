%
% Copyright 2013 Ke-Wei Ma
%
% Replicate some of the charts in Chapter 1 of
% "Understanding the FFT" by Anders E. Zonst
% using Matlab instead of BASIC.

clear all;
clf;


% ------------
% Figure 1.2
h = 1:2:200;   % odd terms
a = 1 ./ h;    % amplitude
f = @(x) sin(x);

[x,y] = dft10( h, a, f);

subplot(2,3,1);
dft10_plot(x,y);


% ------------
% Figure 1.4.1
h = 1:1:200;   % all terms
a = 1 ./ h;    % amplitude
f = @(x) sin(x);

[x,y] = dft10( h, a, f);

subplot(2,3,2);
dft10_plot(x,y);

% ------------
% Figure 1.4.2
h = 1:2:200;      % odd terms
a = (1 ./ h).^2;  % amplitude
f = @(x) -cos(x);

[x,y] = dft10( h, a, f);

subplot(2,3,3);
dft10_plot(x,y);

% ------------
% Figure 1.4.3
h = 1:2:200;      % odd terms
a = (1 ./ h).^2;  % amplitude
f = @(x) sin(x);

[x,y] = dft10( h, a, f);

subplot(2,3,4);
dft10_plot(x,y);

% ------------
% Figure 1.4.4
h = 1:1:200;      % all terms
a = (1 ./ h).^2;  % amplitude
f = @(x) sin(x);

[x,y] = dft10( h, a, f);

subplot(2,3,5);
dft10_plot(x,y);


% ------------
% Figure 1.4.5
h = 1:2:200;    % odd terms
a = 1 ./ h;     % amplitude
f = @(x) cos(x);

[x,y] = dft10( h, a, f);

subplot(2,3,6);
dft10_plot(x,y);