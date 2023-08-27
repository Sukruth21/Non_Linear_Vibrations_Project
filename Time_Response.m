clc
clear
close

tRange=0:0.01:50;
X0=[0;0.1];
[tSol,XSol]=ode45(@myfunc,tRange,X0);

figure(1)
plot(tSol,XSol(:,1))
xlabel('Time ${t}$', 'Interpreter','latex','FontSize',20);
ylabel('Displacement ${x}$', 'Interpreter','latex','FontSize',20);
title('Displacement Response','FontSize',25)
figure(2)
plot(tSol,XSol(:,2))
xlabel('Time ${t}$', 'Interpreter','latex','FontSize',20);
ylabel('Velocity $\dot{x}$', 'Interpreter','latex','FontSize',20)
title('Velocity Response','FontSize',25)
figure(3)
plot(XSol(:,1),XSol(:,2))
xlabel('Displacement ${x}$', 'Interpreter','latex','FontSize',20);
ylabel('Velocity $\dot{x}$', 'Interpreter','latex','FontSize',20)
title('Phase Portrait','FontSize',25)

function dXdt = myfunc(t,X)
%Parameters taken for the system
F=0.1;
omega=2;
nu=0.75;
beta=1.05;
mu=0.5;
delta=1;

X1=X(1);
X2=X(2);

dX1dt=X2;
dX2dt=-X1+(delta*X1^2)-(mu*X2)+(beta*X2^2)-(nu*X1*X2)+F*cos(omega*t);
dXdt=[dX1dt;dX2dt];
end  