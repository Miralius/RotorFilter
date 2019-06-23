a=2;
b=2;
c=2;
d=2;
const=1;
wavelength=0.00065;
z=10000;
n=2000;
m=2000;
mm=1;
% ----------------------------------------------------------
[input, x, y, h1, h2] = func(a, b, n, const, mm);
% --plots of input function--
figure
image(abs(input),'CDataMapping','scaled');
colormap(gray(255))
figure
image(angle(input),'CDataMapping','scaled');
colormap(gray(255))
% ----------------------------------------------------------
tic
[output] = ft(c, d, m, h1, h2, input, x, y);
t=toc;
% --plots of output function--
figure
image(abs(output),'CDataMapping','scaled');
colormap(gray(255))
figure
image(angle(output),'CDataMapping','scaled');
colormap(gray(255))