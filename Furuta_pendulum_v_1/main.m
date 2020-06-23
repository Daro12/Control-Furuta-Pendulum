clc,close all;
figure(1)
plot(t,theta0,'b','Linewidth',1.5);
grid on
axis([0 35 -0.25 0.25]);
set(gca,'XTick',[0 10 20 30],'YTick',[-0.2 0 0.2],'FontName','Times New Roman','FontSize',24)
text(16,0.195,'$\theta_0$','Interpreter','latex','Fontsize',24);
text(30.75,-0.22,'$t$ [$\mathrm{s}$]','Interpreter','latex','Fontsize',24);
text(1.6,0.155, '[$\mathrm{rad}$]','Interpreter','latex','Fontsize',24,'rotation',90);
figure(2)
plot(t,theta1,'b','Linewidth',1.5);
grid on
axis([0 35 -0 9]);
set(gca,'XTick',[0 10 20 30],'YTick',[0 3 6 9],'FontName','Times New Roman','FontSize',24)
text(16,8,'$\theta_1$','Interpreter','latex','Fontsize',24);
text(30.75,0.55,'$t$ [$\mathrm{s}$]','Interpreter','latex','Fontsize',24);
text(1.6,7.3, '[$\mathrm{rad}$]','Interpreter','latex','Fontsize',24,'rotation',90);
figure(3)
plot(theta1,theta1p,'b','Linewidth',1.5);
grid on
axis([-2 9 -20 20]);
set(gca,'XTick',[0 3 6 9],'YTick',[-20 -10 0 10 20],'FontName','Times New Roman','FontSize',24)
text(6.35,-17.5,'$\theta_1$ [$\mathrm{rad}$]','Interpreter','latex','Fontsize',24);
text(-1.37,4.5, '$\dot\theta_1$ [$\mathrm{rad/s}$]','Interpreter','latex','Fontsize',24,'rotation',90);
figure(4)
plot(t,tauF,'b','Linewidth',1.5);
grid on
axis([0 35 -0.1 0.1]);
set(gca,'XTick',[0 10 20 30],'YTick',[-0.1 -0.05 0 0.05 0.1],'FontName','Times New Roman','FontSize',24)
text(16,0.08,'$\tau$','Interpreter','latex','Fontsize',24);
text(30.7,-0.088,'$t$ [$\mathrm{s}$]','Interpreter','latex','Fontsize',24);
text(1.6,0.06, '[$\mathrm{Nm}$]','Interpreter','latex','Fontsize',24,'rotation',90);
figure(5)
plot(t,E,'b','Linewidth',1.5);
grid on
axis([0 35 -0.075 0.075]);
set(gca,'XTick',[0 10 20 30],'YTick',[-0.05 0 0.05],'FontName','Times New Roman','FontSize',24)
text(13,0.057,'$E\left(q,\dot q\right)$','Interpreter','latex','Fontsize',24);
text(30.75,-0.0665,'$t$ [$\mathrm{s}$]','Interpreter','latex','Fontsize',24);
text(1.6,0.06, '[$\mathrm{J}$]','Interpreter','latex','Fontsize',24,'rotation',90);
figure(6)
plot(t,V,'b','Linewidth',1.5);
grid on
axis([0 35 -1 4]);

set(gca,'XTick',[0 10 20 30],'YTick',[0 2 4],'FontName','Times New Roman','FontSize',24)
text(13,3.5,'$V\left(q,\dot q\right)$','Interpreter','latex','Fontsize',24);
text(30.75,-0.71,'$t$ [$\mathrm{s}$]','Interpreter','latex','Fontsize',24);
