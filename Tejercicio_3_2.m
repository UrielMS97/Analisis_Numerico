xl = -2;
xu = 0;
i = 1;
e(i) = 10;

while(e(i)>0.001)

    xr = (xl + xu)/2;

    g_xl = (xl^3-(10*xl)-5);
    g_xr = (xr^3-(10*xr)-5);
    g_xu = (xu^3-(10*xu)-5);

    if(g_xl*g_xr<0)
        xu = xr;
        e(i + 1) = abs(xr - xl);
    end

    if(g_xu*g_xr<0)
        xl = xr;
        e(i + 1) = abs(xr - xu);
    end
    i = i + 1;
    if(g_xu*g_xr==0);
        xr = xr;
    end
end

tamanyo = size(e);
ite = 1:1:tamanyo(2);

figure('DefaultAxesFontSize',14)
set(gcf,'color','white')
plot(ite,e,'color',[1,0,0],'linewidth',2)
grid on
xlabel('iterations')
ylabel('error')
legend('error')