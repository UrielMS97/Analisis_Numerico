xl = 0;
xu = 2;
i = 1;
e(i) = 10;

while(e(i)>0.00001)

    xr = (xl + xu)/2;

    g_xl = (xl-2^-xl);
    g_xr = (xr-2^-xr);
    g_xu = (xu-2^-xu);

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