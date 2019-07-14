function [output] = ft(c, d, m, h1, h2, input, x, y, z, wavelength)
hh1=2*c/m;
u=-c:hh1:c-hh1;
hh2=2*d/m;
v=-d:hh2:d-hh2;
xu=x.'*u;
yv=y.'*v;

A=exp((-2*pi*1i*xu)/(wavelength*z));
B=exp((-2*pi*1i*yv)/(wavelength*z));
output=-(1i/(wavelength*z))*A.'*input*B*h1*h2;
end %Fourier transform