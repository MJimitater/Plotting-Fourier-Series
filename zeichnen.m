

function [] = zeichnen(f)


t = linspace(-2*pi, 2*pi, 1000);
 u = zeros (1,1000);
 
 
 for j=1:1000
     
     u(j)= f( t(j) );
     
 end
 
 plot(t,u)
 xlabel('x')
 ylabel('g(x)')
title('Funktionsgraph von f(x)')
grid

end