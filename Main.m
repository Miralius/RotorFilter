a=5;
b=5;
c=5;
d=5;
const=1;
wavelength=0.00065;
z=5000;
n=2000;
m=5000;
mm=2;
% ----------------------------------------------------------
[input, x, y, h1, h2] = func(a, b, n, const, mm, z, wavelength);
% --plots of input function--
figure
image(abs(input),'CDataMapping','scaled');
colormap(gray(255))
figure
image(angle(input),'CDataMapping','scaled');
colormap(gray(255))
% ----------------------------------------------------------
tic
[output] = ft(c, d, m, h1, h2, input, x, y, z, wavelength);
t=toc;
% --plots of output function--
figure
image(abs(output),'CDataMapping','scaled');
colormap(gray(255))
figure
image(angle(output),'CDataMapping','scaled');
colormap(gray(255))