function [output] = ft(c, d, m, wavelength, z, h1, h2, input, x, y)
hh1=2*c/m;
u=-c:hh1:c-hh1;
hh2=2*d/m;
v=-d:hh2:d-hh2;
xu=x.'*u;
yv=y.'*v;
xx=x.'*x;
yy=y.'*y;
uu=u.'*u;
vv=v.'*v;
A=exp((pi*1i*xx)/(wavelength*z));
B=exp((pi*1i*yy)/(wavelength*z));
C=exp(-(2*pi*1i*xu)/(wavelength*z));
D=exp(-(2*pi*1i*yv)/(wavelength*z));
integral=input*A*B*C*D*h1*h2;
expuuvv=exp((1i*pi*uu)/(wavelength*z))*exp((1i*pi*vv)/(wavelength*z));
output=(-1i/(wavelength*z))*expuuvv*integral;
end

% function [output] = ft(c, d, m, h1, h2, input, x, y)
% hh1=2*c/m;
% u=-c:hh1:c-hh1;
% hh2=2*d/m;
% v=-d:hh2:d-hh2;
% xu=x.'*u;
% yv=y.'*v;
% A=exp(-2*pi*1i*xu).';
% B=exp(-2*pi*1i*yv);
% output=A*B*input*h1*h2;
% end