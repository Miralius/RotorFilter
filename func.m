function [input, x, y, h1, h2] = func(a, b, n, sigma)
h1=2*a/n;
x=-a:h1:a-h1;
h2=2*b/n;
y=-b:h2:b-h2;
input1=(exp(-(x.*x))).';
input2=(exp(-(y.*y)));
input=(input1*input2)/(2*sigma*sigma);
end