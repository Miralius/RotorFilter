function [output] = lFr(input, x, y, wavelength, z)
gxy1=exp(-1i*pi*(x.*x)/(wavelength*z));
gxy2=exp(-1i*pi*(y.*y)/(wavelength*z));
gxy=gxy1.'*gxy2; %field of lens Fresnel
output=gxy.*input;
end

