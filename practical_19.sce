function y=rastrigin(x)
n=max(size(x));
y=n+sum(x.^2-cos(2*%pi*x));
endfunction

function y=rastrigingrad(x)
y=2*x+2*%pi*sin(2*%pi*x);
endfunction

function z=dotprod(x,y)
z=sum(x.*y);
endfunction

function d=descentdirection(f,x,fx,gx)
d=-gx;
endfunction

function [xnew,fnew,itback]=backtracking(f,x,fx,gx,d)
tau=0.3;
bet=0.0001;
alphainit=1;
alpha=alphainit;xnew=x+alpha*d;
fnew=f(xnew);
itback=1;
while(fnew>fx+bet*alpha*dotprod(gx,d))
  alpha=tau*alpha;
  xnew=x+alpha*d;
  fnew=f(xnew);
  itback=itback+1;
end
endfunction

disp('steepest descent method for the rastrigin function:');

timer();
n=evstr(x_dialog('number of variables of the rastrigin function to minimize','2'));
epsilon=1E-5;

xmin=-5*ones(1,n);
xmax=5*ones(1,n);
u=rand(1,n);
x0=xmin+(xmax-xmin).*u;
x=x0;fx=rastrigin(x);gx=rastrigingrad(x);
itgrad=1;
itfct=1;
Xbest=x;Fbest=fx;

while (norm(gx)>epsilon)
  d=descentdirection(rastrigin,x,fx,gx);
  [x,fx,itback]=backtracking(rastrigin,x,fx,gx,d);
  Xbest=[Xbest;x];
  Fbest=[Fbest;fx];
  gx=rastrigingrad(x);
  itgrad=itgrad+1;
  itfct=itfct+itback;
end

disp('function evaluation number:');disp(itfct);
disp('gradient evaluation number:');disp(itgrad);
disp('minimum obtained:');disp(x);
disp('corresponding value by f:');disp(fx);

if (n==2)
xmin=-5.12;xmax=5.12;N=300;
xplot=xmin:((xmax-xmin)/(N-1)):xmax;
yplot=xplot;
zplot=zeros(N,N);
for i=1:N
for j=1:N
zplot(i,j)=rastrigin([xplot(i),yplot(j)]);
end
end
clf()
plot2d(Xbest(:,1),Xbest(:,2),rect=[-5.12,-5.12,5.12,5.12]); 
contour2d(xplot,yplot,zplot,[0:0.01:0.1,0.2:1,1:10]);
xtitle('trajectory display');
clf()
plot2d(Xbest(:,1),Xbest(:,2),rect=[x(1)-0.1,x(2)-0.1,x(1)+0.1,x(2)+0.1]); 
contour2d(xplot,yplot,zplot,[fx:0.1:(fx+1)]);
xtitle('trajectory display');
end
