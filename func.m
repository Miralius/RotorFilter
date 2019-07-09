function [input, x, y, h1, h2] = func(a, b, n, const, mm)
h1=2*a/n;
x=-a:h1:a-h1;
h2=2*b/n;
y=-b:h2:b-h2;
gxy=zeros(n, n);
gxy(1:n,1:n)=const;
%input1=(exp(-(x.*x))).';
%input2=(exp(-(y.*y)));
%gxy=(input1*input2)/(2*const*const);
fxy=exp(1i*mm*atan2(-y.',x));
input=gxy.*fxy;
end