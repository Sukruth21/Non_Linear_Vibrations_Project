clc
clear
close

syms a om

mu=0.05;
nu=1.75;
beta=0.05;
F=0.05;
figure(1)
eqn= ((mu*a*om)+(0.5*nu*om*(a^3)*((beta*om^2)+1)))^2 + ((-a)+((a^3)*((beta*om^2)+1))+(a*om^2))^2==F^2;
fimplicit(eqn,[0 0.5 0 2],'LineWidth',1)
xlabel('${a}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
ylabel('${\Omega}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
title('Frequency Response','FontSize',25,'FontWeight','bold')

figure(2)
nu=1.75;
beta=0.05;
for F=[0.05 0.1 0.125]
eqn= ((mu*a*om)+(0.5*nu*om*(a^3)*((beta*om^2)+1)))^2 + ((-a)+((a^3)*((beta*om^2)+1))+(a*om^2))^2==F^2;
fimplicit(eqn,[0 0.5 0 2],'LineWidth',1)
xlabel('${a}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
ylabel('${\Omega}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
legend('F = 0.05','F = 0.1' , 'F = 0.125','Interpreter','latex')
title('Effect of F','Interpreter','latex','FontSize',25,'FontWeight','bold')
hold on
end
hold off

figure(3)
F=0.05;
beta=0.05;
for nu=[0.1 0.75 1.75]
eqn= ((mu*a*om)+(0.5*nu*om*(a^3)*((beta*om^2)+1)))^2 + ((-a)+((a^3)*((beta*om^2)+1))+(a*om^2))^2==F^2;
fimplicit(eqn,[0 0.9 0 1.5],'LineWidth',1)
xlabel('${a}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
ylabel('${\Omega}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
legend('${\nu}$ = 0.1','${\nu}$ = 0.75' , '${\nu}$ = 1.75','Interpreter','latex')
title('Effect of ${\nu}$','Interpreter','latex','FontSize',25,'FontWeight','bold')
hold on
end
hold off

figure(4)
nu=1.75;
F=0.05;
for beta=[0.05 1.05 2.5]
eqn= ((mu*a*om)+(0.5*nu*om*(a^3)*((beta*om^2)+1)))^2 + ((-a)+((a^3)*((beta*om^2)+1))+(a*om^2))^2==F^2;
fimplicit(eqn,[0 0.6 0 1.5],'LineWidth',1)
xlabel('${a}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
ylabel('${\Omega}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
legend('${\beta}$ = 0.05','${\beta}$ = 1.05' , '${\beta}$ = 2.5','Interpreter','latex')
title('Effect of ${\beta}$','Interpreter','latex','FontSize',25,'FontWeight','bold')
hold on
end