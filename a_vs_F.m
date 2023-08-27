clc
clear
close

om=0.7;
beta=0.05;
mu=0.05;

syms a F

figure(1)
for nu=[0.05 1 3.5]
eqn=((mu*a*om)+(0.5*nu*om*(a^3)*((beta*om^2)+1)))^2 + ((-a)+((a^3)*((beta*om^2)+1))+(a*om^2))^2==F^2;
fimplicit(eqn,[0 0.5 0 1])
xlabel('${F}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
ylabel('${a}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
legend('${\nu}$ = 0.05','${\nu}$ = 1' , '${\nu}$ = 3.5','Interpreter','latex')
title('a vs F (Effect of {\nu})','FontSize',25,'FontWeight','bold')
hold on
end
hold off

figure(2)
nu=1.75;
for beta=[0.05 0.8 1.5]
eqn=((mu*a*om)+(0.5*nu*om*(a^3)*((beta*om^2)+1)))^2 + ((-a)+((a^3)*((beta*om^2)+1))+(a*om^2))^2==F^2;
fimplicit(eqn,[0 1 0 1.25])
xlabel('${F}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
ylabel('${a}$', 'Interpreter','latex','FontSize',20,'FontWeight','bold');
legend('${\beta}$ = 0.05','${\beta}$ = 0.8','${\beta}$ = 1.5','Interpreter','latex')
title('a vs F (Effect of {\beta})','FontSize',25,'FontWeight','bold')
hold on
end
