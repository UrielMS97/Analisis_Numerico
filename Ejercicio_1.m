clear all;
clc;
format short;
fx=input('Introduzca la funcion= ','s')
Xi=input('introduzca el valor de Xi= ');
Xf=input('introduzca el valor de Xf= ');
n=input('introduzca el numero de iteraciones= ');
f = inline (fx);
yi=f(Xi);
yf=f(Xf);
 
x = Xi-1:0.01:Xf+1;
y = f(x);
plot(x,y)
 
if (yi)*(yf) < 0
    
disp('   N     Xi        Xf      f(xi)    f(xf)    f(Xi)f(Xf)     Xm       f(Xm)      f(Xi)f(Xm)     error  ');
disp('|----|--------|--------|---------|---------|-------------|---------|---------|-------------|----------|');

    for R=1:1:n
        
    Xm=(Xi+Xf)/2;
    Error=abs(((Xm-Xi)/Xm)*100);
    fprintf('  %d    %0.5f %0.5f  %0.5f   %0.5f    %0.5f    %0.5f   %0.5f    %0.5f     %0.5f \n', R, Xi, Xf, f(Xi), f(Xf),f(Xi)*f(Xf) , Xm, f(Xm), f(Xi)*f(Xm), Error);
    if (f(Xi)*f(Xm)== 0)
       
    elseif (f(Xi)*f(Xm) < 0)
        
        Xf=Xm;
    else 
        Xi=Xm;
    end
   
    Error=abs(((Xm-Xi)/Xm)*100);
    
    end
    
 
    
else
    disp('No existe la raiz en ese intervalo, proponer otro intervalo');
end

