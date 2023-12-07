//function --> y = x^3+2x^2-8 
disp("secant method")
deff('y=f(x)','y=x^3+2*x^2-8')
a=1
b=2
for i = 1:5
    c = (a*f(b)-b*f(a))/f(b)-f(a)
    b=c
    a=c
    disp([i,c])
end
