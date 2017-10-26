clear all

loc_f='C:\SDATA\CLUSTER\20_07_2013\C4\HS\C4_CP_RAP_HSPCT\C4_CP_RAP_HSPCT__20130720_010000_20130720_030000_V160305.cdf';

[RAP,inf_RAP]=spdfcdfread(loc_f);
RS4_H=RAP{3};  [T4,Tv4]=Time_date2sec(RAP{1},'M'); E_int4=RAP{5};


Flux4_H = zeros ( size(RS4_H));
ks=2
for j=1:length(RS4_H(1,:));
    for i =1+ks : length(T4)-ks
        S=0;
        for ii = i-ks : i+ks
        S= S + RS4_H(ii,j);
        end
        Flux4_H(i,j) = (1/(2*ks+1)) * S;

    end
end

%%
Tmin= 20* 24*3600 +1* 3600 + 35* 60;	Tmax = 20* 24*3600 +2* 3600 + 30* 60;

%%
figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T4,Flux4_H(:,1),T4,Flux4_H(:,2),T4,Flux4_H(:,3),T4,Flux4_H(:,4))
legend(num2str(E_int4(1)),num2str(E_int4(2)),num2str(E_int4(3)),num2str(E_int4(4)))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
set(axes1,'YScale','log')

%%

figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);
hold on

plot(T4,gamma_calculation ( Flux4_H, E_int4, 1,2),'black',...
     T4,gamma_calculation ( Flux4_H, E_int4, 2,3),'red',...
     T4,gamma_calculation ( Flux4_H, E_int4, 3,4),'blue')

 ylabel( 'gamma','FontWeight','demi','FontSize',20)

 
 xlim([Tmin, Tmax])

 legend([num2str(E_int4(1)),'-',num2str(E_int4(2))],...
       [num2str(E_int4(2)),'-',num2str(E_int4(3))],...
       [num2str(E_int4(3)),'-',num2str(E_int4(4))])
       
   
 XTimeLabel( axes1 )

 
 %%
 
 loc_f='C:\SDATA\CLUSTER\20_07_2013\C4\HS\C4_CP_EFW_L2_E3D_GSE\C4_CP_EFW_L2_E3D_GSE__20130720_010000_20130720_030000_V150604.cdf';
% loc_f='C:\SDATA\CLUSTER\20_07_2013\C4\HS\C4_CP_EFW_L3_E3D_GSE\C4_CP_EFW_L3_E3D_GSE__20130720_010000_20130720_030000_V160305.cdf'
[EC4,inf_EC4]=spdfcdfread(loc_f);
E4=EC4{2};  [T4E,Tv4E]=Time_date2sec(EC4{1},'M');
% 
for i=1:length(E4(i:2))
    if E4(i,2)<-100000
        E4(i,2)=0;
    end
end

        
    
figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T4E,E4(:,2))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
