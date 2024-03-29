function [input, x, y, h1, h2] = func(a, b, n, const, mm, z, wavelength)
h1=2*a/n;
x=-a:h1:a-h1;
h2=2*b/n;
y=-b:h2:b-h2;
%--------------------
gxy=zeros(n, n);
gxy(1:n,1:n)=const; %const field
%--------------------
% input1=(exp(-(x.*x))).';
% input2=(exp(-(y.*y)));
% gxy=(input1*input2)/(2*const*const); %Gauss fan
%--------------------
angl=zeros(n, n);
for j=1:n
    if j<=n/2
        angl(j,1:n) = atan2(-y(j)',x);
    else
        angl(j,1:n)=atan2(-y(j)',x) + 2*pi;
    end
end %phase diagram

fxy=exp(1i*mm*angl);

input=gxy.*fxy;

end