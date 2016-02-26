% dft41 Run dft on trivial time domain function
%
% Copyright 2013 Ke-Wei Ma
% keweima at gmail.com
%
% Creates time domain data and applies DFT
% techniques to reconstruct using Fourier.\
%
% Based on BASIC code from "Understanding the
% FFT" by Anders E. Zonst

pi2 = 2 * pi;
k1 = pi / 8;
k2 = 1 / pi;
y = zeros(1,16);    % time domain function

fc = zeros(1,16);   % amplitude of derived
fs = zeros(1,16);

kc = zeros(1,16);   % amplitudes of source
ks = zeros(1,16);   

%*****************
%*  Prompt User  *
%*****************
prompt = 'Select input waveform\n1 - triangle \n2 - shifted cosine\n3 - "Perfect" triangle wave\n';
choice = input(prompt);

%**************************
%*  Generate function     *
%**************************
% Ideally it is not hardcoded for length but so is the book example.
switch choice
    case 1
        % triangle
        i = 0:15;
        k3 = i * k1;
        y = cos(k3) + cos(3*k3)  ./ 9 + cos(5*k3) ./ 25 + cos(7*k3) ./49;
        i = 1:2:7;
        kc(i+1) = 1 ./ i.^2;        % adjust indexing because BASIC is base 0 and
                                    % Matlab is base 1.  Stupid code.
    case 2
        % shifted cosine
        k4 = 3 * pi/8;
        kc(1) = cos(k4);
        ks(1) = sin(k4);
        i = 0:15;
        y = cos(i*k1+k4);      
        
    case 3 
        % perfect triangle
        k2 = pi^2/8;
        k3 = k2/4;
        i = 0:7;
        y = k2 - k3*i;
        i = 8:15;
        y(9:16) = k3 * i - 3*k2;
end

% Plot input wave form.  Too bad BASIC doesn't support easy graphics!
x = 0:15;
plot(x,y);
    

%**************************
% Solve for components    *
%**************************
i = 0:15;
j = 0:15;
fc = sum( cos(j'*i*k1) .* repmat(y',1,16)',2) ./ 16;
fs = sum( sin(j'*i*k1) .* repmat(y',1,16)',2) ./ 16;

%**************************
%*  Print column headers  *
%**************************
fprintf('%4s\t%8s\t%8s\t%8s\t%8s\n','FREQ','F(COS)','F(SIN)','Y(COS)','Y(SIN)');

%***************
% Print Output *
%***************
for i=1:16
    fprintf('%4i\t%8.5f\t%8.5f\t%8.5f\t%8.5f\n',i, fc(i), fs(i),kc(i),ks(i));
end

%**************
% Reconstruct *
%**************
i = 0:15;
j = 0:15;
z = sum( cos(j'*i*k1)' .* repmat(fc',16,1),2) + sum( sin(j'*i*k1)' .* repmat(fs',16,1),2);

%***************
% Print Output *
%***************
fprintf('\n\n');
fprintf('%4s\t%8s\t%8s\n','T','Z(I)','Y(I)');
for i=1:16
    fprintf('%4i\t%8.5f\t%8.5f\n', i-1, z(i), y(i));
end

% Graph both the orginal waveform and reconstructed
figure
i=0:15;
plot(i, z, i, y)

