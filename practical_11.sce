c = [120 320]';
A = [
1 4
1 2
];
b = [40 30]';
A=-A
b=-b
lb=[0;0];
[xopt,fopt,exitflag,iter,yopt]=karmarkar([],[],c,[],[],[],[],[],A,b)

A=-A;
 b=-b;

deff('[w]=f(x,y)','w=c(1)*x+c(2)*y');
xx=[0:1:40];yy=[0:1:40];zz=feval(xx,yy,f);
contour(xx,yy,zz,[3000 4000 5000]);
deff('[y1]=f1(x)','y1=10-(x/4)')
deff('[y2]=f2(x)','y2=(15-(x/2))')
xxx=[0:1:40];yy1=f1(xxx);yy2=f2(xxx);
plot2d([xxx' xxx'],[yy1' yy2'],[-1,-1],'011',' ',[0 0 40 18])
xstring(xopt(1)+0.05, xopt(2)+0.05,'solution')
xtitle('Primal Dual problem1','x','y')
