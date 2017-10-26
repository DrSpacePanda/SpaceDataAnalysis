

loc_f='C:\SDATA\THEMIS\20_07_2013\thd_l2s_sst_20130720013500_20130720022958.cdf'

[RAP,inf_RAP]=spdfcdfread(loc_f);
RS=RAP{3};  [T,Tv]=Time_date2sec(RAP{1},'M');

Tmin= 20* 24*3600 +1* 3600 + 35* 60;	Tmax = 20* 24*3600 +2* 3600 + 30* 60;


figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T,RS(:,3),T,RS(:,4),T,RS(:,5),T,RS(:,6))
legend(num2str(RAP{4}(1,3)/1000),num2str(RAP{4}(1,4)/1000),num2str(RAP{4}(1,5)/1000),num2str(RAP{4}(1,6)/1000))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'eV/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
set(axes1,'YScale','log')

%% 


%grid on
Flux = zeros ( size(RS));
ks=2
for j=1:length(RS(1,:));
    for i =1+ks : length(T)-ks
        S=0;
        for ii = i-ks : i+ks
        S= S + RS(ii,j);
        end
        Flux(i,j) = (1/(2*ks+1)) * S;

    end
end


figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T,Flux(:,3),T,Flux(:,4),T,Flux(:,5),T,Flux(:,6))
legend(num2str(RAP{4}(1,3)/1000),num2str(RAP{4}(1,4)/1000),num2str(RAP{4}(1,5)/1000),num2str(RAP{4}(1,6)/1000))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'eV/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
set(axes1,'YScale','log')

%%

% 
% 
E_int=RAP{4}(1,:)/1000;
P23 =  gamma_calculation ( Flux, E_int, 3,4);
   
P34 = gamma_calculation ( Flux, E_int, 4,5);
   
P45 =  gamma_calculation ( Flux, E_int, 5,6);

figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T,P23,T,P34,T,P45)
legend([num2str(E_int(3)),'-',num2str(E_int(4))],...
       [num2str(E_int(4)),'-',num2str(E_int(5))],...
       [num2str(E_int(5)),'-',num2str(E_int(6))] )

 title(   'gamma',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'gamma','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )

%%
loc_f='C:\SDATA\THEMIS\20_07_2013\thd_l2s_fgm_20130720013500_20130720022958.cdf' ;
[A1,inf_A1]=spdfcdfread(loc_f);
B_GSM=A1{3};  [T11,Tv11]=Time_date2sec(A1{1},'M');

Tmin= 20* 24*3600 +1* 3600 + 35* 60;	Tmax = 20* 24*3600 +2* 3600 + 30* 60;

figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T11,B_GSM(:,1),T11,B_GSM(:,3))
legend('Bx','Bz')


 title(   'Bx ',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'B [nT] ','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
