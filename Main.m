a=5;
b=5;
c=5;
d=5;
const=1;
wavelength=0.00065;
z=1000;
n=1000;
m=2000;
mm=3;
%nn=2;
%refrIndex=1.2;
% ----------------------------------------------------------
map=zeros(256, 3);
for j=1:256
    map(j,1)=(j-1)/255;
end
% ----------------------------------------------------------
[input, x, y, h1, h2] = func(a, b, n, const, mm, z, wavelength);
% --plots of input function--
figure
image(abs(input),'CDataMapping','scaled');
colormap(map)
figure
image(angle(input),'CDataMapping','scaled');
colormap(gray(255))
% ----------------------------------------------------------
%tic
%[output] = ft(c, d, m, h1, h2, input, x, y, z, wavelength);
%t=toc; %?????????????? ?????

tic
[output] = fr(c, d, m, h1, h2, input, x, y, z, wavelength);
t=toc; %?????????????? ???????
% --plots of output function--
figure
image(abs(output),'CDataMapping','scaled');
colormap(map)
figure
image(angle(output),'CDataMapping','scaled');
colormap(gray(255))