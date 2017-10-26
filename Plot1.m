function [ A ] = Plot1( T1, RS1, Flux1, E_int1 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
A=1;
figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T1,RS1(:,2),...
    T1,RS1(:,3),...
    T1,RS1(:,4),...
    T1,RS1(:,5))

legend(num2str(E_int1(2)),num2str(E_int1(3)),num2str(E_int1(4)),num2str(E_int1(5)))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
set(axes1,'YScale','log')



figure2=figure('Color', [1 1 1])
axes2 = axes('Parent',figure1);

plot(T1,gamma_calculation ( Flux1, E_int1, 2,3),...
    T1,gamma_calculation ( Flux1, E_int1, 3,4),...
    T1,gamma_calculation ( Flux1, E_int1, 4,5))

legend(num2str(E_int1(2)),num2str(E_int1(3)),num2str(E_int1(4)))


ylabel( 'gamma','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes2 )
set(axes2,'YScale','log')


end

