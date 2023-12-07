function f=fun(x1, x2)  
    f=fun1([x1 x2])  
endfunction  
  
function f=fun1(x)     f=x(1)^2x(2)^2  
endfunction  
  
x=linspace(-5,5,100); y=linspace(5,5,100); z=feval(x,y,fun);  
surf (x,y,z);  
