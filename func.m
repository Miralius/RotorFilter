function [input, x, y, h1, h2] = func(a, b, n, const, mm, z, wavelength)
h1=2*a/n;
x=-a:h1:a-h1;
h2=2*b/n;
y=-b:h2:b-h2;
%gxy=zeros(n, n);
%gxy(1:n,1:n)=const;
%gxy1=exp(-1i*pi*(x.*x)/(wavelength*z));
%gxy2=exp(-1i*pi*(y.*y)/(wavelength*z));
%gxy=gxy1.'*gxy2;
input1=(exp(-(x.*x))).';
input2=(exp(-(y.*y)));
gxy=(input1*input2)/(2*const*const);
angl=zeros(n, n);
for j=1:n
    if j<=n/2
        angl(j,1:n) = atan2(-y(j)',x);
    else
        angl(j,1:n)=atan2(-y(j)',x) + 2*pi;
    end
end
fxy=exp(1i*mm*angl);%.*fxy
input=gxy;
end