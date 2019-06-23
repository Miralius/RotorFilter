function [input, x, y, h1, h2] = func(a, b, n, const, mm)
h1=2*a/n;
x=-a:h1:a-h1;
h2=2*b/n;
y=-b:h2:b-h2;
gxy=zeros(n, 1);
for j=1:n
    gxy(j)=const;
end
fxy=exp(-(1i*mm*atan2(y,x)));
input=gxy*fxy;
end