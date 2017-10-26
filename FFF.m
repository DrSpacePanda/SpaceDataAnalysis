% Tmin= 20* 24*3600 +1* 3600 + 46* 60;	Tmax = 20* 24*3600 +2* 3600 + 5* 60;


figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);
hold on

h= plot(T1,gamma_calculation ( Flux1, E_int1, 4,5),'black',...
     T2,gamma_calculation ( Flux2, E_int2, 4,5),'red',...
     T4,gamma_calculation ( Flux4, E_int4, 4,5),'blue',...
     T ,gamma_calculation ( Flux, E_int, 5,6),'magenta')

% plot(T1,RS1(:,5),'black',T2,RS2(:,5),'red',T4,RS4(:,5), 'blue',T,RS(:,6), 'magenta')

legend([num2str(E_int1(4)),'-',num2str(E_int1(5)),' keV'],...
       [num2str(E_int2(4)),'-',num2str(E_int2(5)),' keV'],...
       [num2str(E_int4(4)),'-',num2str(E_int4(5)),' keV'],...
       [num2str(E_int(5)) ,'-',num2str(E_int(6)) ,' keV'] );

ylabel( 'gamma ','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
% set(axes1)


figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

h= plot(T1,gamma_calculation ( Flux1, E_int1, 3,4),'black',...
     T2,gamma_calculation ( Flux2, E_int2, 3,4),'red',...
     T4,gamma_calculation ( Flux4, E_int4, 3,4),'blue',...
     T ,gamma_calculation ( Flux, E_int, 4,5),'magenta')


 
% plot(T1,RS1(:,5),'black',T2,RS2(:,5),'red',T4,RS4(:,5), 'blue',T,RS(:,6), 'magenta')

legend([num2str(E_int1(3)),'-',num2str(E_int1(4)),' keV'],...
       [num2str(E_int2(3)),'-',num2str(E_int2(4)),' keV'],...
       [num2str(E_int4(3)),'-',num2str(E_int4(4)),' keV'],...
       [num2str(E_int(4)) ,'-',num2str(E_int(5)) ,' keV']);
       

ylabel( 'gamma ','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )