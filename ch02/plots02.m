% 
% author: Ke-Wei Ma
% contact: keweima at gmail.com
% 
% summary: Replicate some of the charts in Chapter 2 of
% "Understanding the FFT" by Anders E. Zonst
% using Matlab instead of BASIC.
%

clear all;

% plot 1
i = 0:2*pi/64:2*pi;
u = sin(i);
f = 2 .* u;
g = f .* u;

figure 
plot(i,f,'x',i,u,'+',i,g,'o')
legend('2sin(x)','sin(x)','2sin(x)^2')
title('2sin(x)^2')
grid on

% plot 2
t = sin(2*i);
f = u .* t;

figure 
plot(i,u,'x',i,t,'+',i,f,'o')
legend('sin(x)','sin(2x)','sin(x)*sin(2x)')
title('Sin(x)Sin(2x)')
grid on

% plot 3
s = cos(i);
v = cos(3*i);
f = s .* v;

figure 
plot(i,s,'x',i,v,'+',i,f,'o')
legend('cos(x)','cos(3x)','cos(x)*cos(3x)')
title('cos(x)cos(3x)')
grid on

% plot 4
f = s .* u;

figure 
plot(i,s,'x',i,u,'+',i,f,'o')
legend('cos(x)','sin(x)','cos(x)*sin(x)')
title('cos(x)sin(x)')
grid on