function [f, g, ind]=cost(x, ind)  
    xref = [1; 2; 3];  
    f = 0.5 * norm(x - xref)^2;   
    g = x - xref;  
    if (ind == 1) then   mprintf("f(x) = %s, |g(x)|=%s\n", string(f), string(norm(g)))  
end  endfunction 
x0 = [1; -1; 1];   
[fopt, xopt] = optim(cost, x0, iprint = -1)   
