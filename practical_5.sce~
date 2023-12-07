x1 = linspace(-2,2,100); 
x2 = linspace(-2,2,100); 
[X1,X2] = meshgrid(x1,x2); 
Z = 100*(X2-X1.^2).^2+(1-X1).^2; 
f = scf(); 
f.color_map = rainbowcolormap(64);
plot3d1(x1,x2,Z');
