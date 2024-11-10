clear
close all
load("F1dat.mat")
A10 = [
    0.00, 0.05, 0.30;  % 更深蓝 (-5)
    0.15, 0.30, 0.55;  % 中蓝 (-3)
    0.30, 0.55, 0.55;  % 蓝绿 (-1)
    0.55, 0.70, 0.35;  % 浅绿 (0)
    0.75, 0.75, 0.15;  % 明显的亮黄 (0)
    0.85, 0.50, 0.20;  % 橙色 (5)
    0.75, 0.20, 0.25;  % 红色 (10)
    0.40, 0.00, 0.15;  % 深红 (15)
];%Color map
c_r=[222 36 28]/256;
c_b=[89 167 202]/256;
c_q=[232 138 70]/256;
%%%%%%%%%%%fig1a 1b%%%%%%%%%%

figure('Position', [100, 100, 800, 450])
ax = axes;
set(ax, 'Position', [0.085, 0.16, 0.8, 0.8]);
contourf(lat,lev/1000,amsf_3000',[-5 -2.5 0 2.5 5 7.5 10 12.5 15])
reverse Ydir
set(gca,'Ydir','reverse');
xlim([-30 70]);
set(gca,'FontSize',18)
xlabel("Latitude (°)")
ylabel("Depth (km)")
grid on
colorbar
caxis([-5 15])
colormap(A10)
% 获取当前colorbar对象
cb = colorbar;
cb.Position(3) = 0.01;  % 设置colorbar的宽度
cb.Position(1) = 0.92;  % 调整colorbar的位置，避免与图像重叠
saveas(gca,"1a","svg")

figure('Position', [100, 100, 800, 450])
ax = axes;
set(ax, 'Position', [0.085, 0.16, 0.8, 0.8]);
contourf(lat,lev/1000,amsf_4000',[-5 -2.5 0 2.5 5 7.5 10 12.5 15])
reverse Ydir
set(gca,'Ydir','reverse');
xlim([-30 70]);
set(gca,'FontSize',18)
xlabel("Latitude (°)")
ylabel("Depth (km)")
grid on
colorbar
caxis([-5 15])
colormap(A10)
% 获取当前colorbar对象
cb = colorbar;
cb.Position(3) = 0.01;  % 设置colorbar的宽度
cb.Position(1) = 0.92;  % 调整colorbar的位置，避免与图像重叠
saveas(gca,"1b","svg")

%%%%%%%%%%%fig1c 1d 1e 1f 1g 1h%%%%%%%%%%
figure('Position', [100, 100, 800, 450])
ax = axes;
set(ax, 'Position', [0.085, 0.16, 0.8, 0.8]);
plot(0:0.01:21.1,amoc_idx,'LineWidth',2,'Color',c_b)
ax = gca;
ax.FontSize = 18;
ax.XMinorTick = "on";
ax.YMinorTick = "on";
ylim([0 25])
xlim([0 21.1])
hold on
xlabel("Model Time (kyr)")
ylabel("AMOC index (Sv)")
yyaxis right
ax.YMinorTick = "on";
ax.GridAlpha = 1.0;
ax.GridLineStyle = '-';
plot(year/1000,solin_high,'LineWidth',2,'Color',c_r)
ylabel("NHSI (W·m^{-2})")
legend("AMOC","NHSI",'NumColumns',2)
grid on
saveas(gca,"1c","svg")

figure('Position', [100, 100, 800, 450])
ax = axes;
set(ax, 'Position', [0.1, 0.16, 0.8, 0.8]);
plot(0:0.001:9.918,movmean(ts_glb_y-273.15,100),'LineWidth',2,'Color',c_b)
ax = gca;
ax.FontSize = 18;
ax.XMinorTick = "on";
ax.YMinorTick = "on";
ylim([10 15])
xlim([0 10])
hold on
xlabel("Model Time (kyr)")
ylabel("Temperature (°C)")
ax.YMinorTick = "on";
ax.GridAlpha = 1.0;
ax.GridLineStyle = '-';
plot(0:0.001:9.918,movmean(ts_nh_y-273.15,100),'LineWidth',2,'Color',c_r)
plot(0:0.001:9.918,movmean(ts_sh_y-273.15,100),'LineWidth',2,'Color',c_q)
legend("Global","NH","SH",'NumColumns',3)
grid on
saveas(gca,"1d","svg")

figure('Position', [100, 100, 800, 450])
ax = axes;
set(ax, 'Position', [0.085, 0.16, 0.8, 0.8]);
plot(0:0.01:9.49,amoc_idx_01_360,'LineWidth',2,'Color',c_b);
ax = gca;
ax.FontSize = 18;
ax.XMinorTick = "on";
ax.YMinorTick = "on";
ylim([0 30]);
xlim([0 9])
hold on
xlabel("Model Time (kyr)")
ylabel("AMOC index (Sv)")
yyaxis right
ax.YMinorTick = "on";
ax.GridAlpha = 1.0;
ax.GridLineStyle = '-';
plot(year/1000,solin_high,'LineWidth',2,'Color',c_r)
ylabel("NHSI (W·m^{-2})")
legend("AMOC","NHSI",'NumColumns',2)
grid on
saveas(gca,"1e","svg")

figure('Position', [100, 100, 800, 450])
ax = axes;
set(ax, 'Position', [0.085, 0.16, 0.8, 0.8]);
plot(0:0.01:9.89,amoc_idx_01_esmall,'LineWidth',2,'Color',c_b);
ax = gca;
ax.FontSize = 18;
ax.XMinorTick = "on";
ax.YMinorTick = "on";
ylim([0 30]);
xlim([0 9])
hold on
xlabel("Model Time (kyr)")
ylabel("AMOC index (Sv)")
yyaxis right
ax.YMinorTick = "on";
ax.GridAlpha = 1.0;
ax.GridLineStyle = '-';
plot(year/1000,solin_high,'LineWidth',2,'Color',c_r)
ylabel("NHSI (W·m^{-2})")
legend("AMOC","NHSI",'NumColumns',2)
grid on
saveas(gca,"1f","svg")

figure('Position', [100, 100, 800, 450])
ax = axes;
set(ax, 'Position', [0.085, 0.16, 0.8, 0.8]);
plot(0:0.01:23.78,amoc_idx_02,'LineWidth',2,'Color',c_b);
ax = gca;
ax.FontSize = 18;
ax.XMinorTick = "on";
ax.YMinorTick = "on";
ylim([0 30]);
xlim([0 21])
hold on
xlabel("Orbital Time (kyr)")
ylabel("AMOC index (Sv)")
yyaxis right
ax.YMinorTick = "on";
ax.GridAlpha = 1.0;
ax.GridLineStyle = '-';
plot(year/1000,solin_high,'LineWidth',2,'Color',c_r)
ylabel("NHSI (W·m^{-2})")
legend("AMOC","NHSI",'NumColumns',2)
grid on
saveas(gca,"1g","svg")

figure('Position', [100, 100, 800, 450])
ax = axes;
set(ax, 'Position', [0.085, 0.16, 0.8, 0.8]);
plot(0:0.005:24.995,amoc_idx_05,'LineWidth',2,'Color',c_b);
ax = gca;
ax.FontSize = 18;
ax.XMinorTick = "on";
ax.YMinorTick = "on";
ylim([0 30]);
xlim([0 21])
hold on
xlabel("Orbital Time (kyr)")
ylabel("AMOC index (Sv)")
yyaxis right
ax.YMinorTick = "on";
ax.GridAlpha = 1.0;
ax.GridLineStyle = '-';
plot(year/1000,solin_high,'LineWidth',2,'Color',c_r)
ylabel("NHSI (W·m^{-2})")
legend("AMOC","NHSI",'NumColumns',2)
grid on
saveas(gca,"1h","svg")