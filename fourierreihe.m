
%Eingabeparamter z.B. : f= @(x) x.^2 und n natürliche Zahl 


function [g] = fourierreihe(f,n)

a = zeros(1,n);
b = zeros(1,n);


   
      
for j=1:n

   a(j) = (1/pi) * integral( @(x) f(x) .*cos(j*x) ,-pi,pi);
   b(j) = (1/pi) * integral( @(x) f(x) .*sin(j*x), -pi, pi);
   
      
end

a(n);
b(n);

c= 1/(2*pi) * integral( @(x) f(x), -pi, pi);

 
 summe = @(x) c;
 
 for j=1:n
    
     summe = @(x) summe(x) + a(j)*cos(j*x) + b(j)*sin(j*x);
     
 end
 
 g= @(x) summe(x);

    
 % nutze z.B. vpa(g(2)) , um als Output lesbare Dezimalzahl zu bekommen
 
 
 t = linspace(-2*pi, 2*pi, 200);
 u = zeros (1,200);
 
 for j=1:200
     
     u(j)= g( t(j) );
     
 end
 
 plot(t,u)
 xlabel('x')
 ylabel('g(x)')
title('Fourierreihe g(x) von f(x)')
grid
 
 


end