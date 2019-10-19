I=0.6
i=1
e(i)=10


while(e(i) > 0.0001)
    if (i == 1)
        x(i) = I;
    end
    fx = log((x(i)^2)+1)-exp(x(i)/2)*cos(pi*x(i))
    fp_x = ((2*x(i))/((x(i)^2)+1))-(((exp(x(i)/2))*cos(pi*x(i)))/2)+((pi*exp(x(i)/2))*sin(pi*x(i)))
    x(i+1)= (x(i))-(fx / fp_x)
    i= i+1;
    
     

   
    e(i) = abs(x(i-1)-x(i));
    
    if (e(i) > 50);
        break;
    end
end

tamanio = size(e);
ite= 1:1:tamanio(2);

figure ('DefaultAxesFontsize', 14)
set (gcf, 'color', 'white');
plot(ite,e,'color',[1 0 0],'LineWidth',2);
grid on
hold on
xlabel('Iterations')
ylabel('error')
legend ('error')