loc_f='C:\SDATA\CLUSTER\20_07_2013\C1\C1_FGM_GSE' ;
[A1,inf_A1]=spdfcdfread(loc_f);
B1_GSM=A1{3};  [T1,Tv1]=Time_date2sec(A1{1},'M');
% TINT=[130385, 133503, 134309, 137176,139541, 140856, 142886,144629,149058]

loc_f='C:\SDATA\CLUSTER\20_07_2013\C2\C2_FGM_GSE' ;
[A1,inf_A1]=spdfcdfread(loc_f);
B2_GSM=A1{3};  [T2,Tv2]=Time_date2sec(A1{1},'M');
% TINT=[131553, 134374, 139854, 143692,148508,158274]

loc_f='C:\SDATA\CLUSTER\20_07_2013\C3\C3_FGM_GSE' ;
[A1,inf_A1]=spdfcdfread(loc_f);
B3_GSM=A1{3};  [T3,Tv3]=Time_date2sec(A1{1},'M');

loc_f='C:\SDATA\CLUSTER\20_07_2013\C4\C4_FGM_GSE' ;
[A1,inf_A1]=spdfcdfread(loc_f);
B4_GSM=A1{3};  [T4,Tv4]=Time_date2sec(A1{1},'M');
% TINT=[128286,130984,131851,134873,138746,141383,148600]

loc_f='C:\SDATA\THEMIS\20_07_2013\thd_l2s_fgm_20130720013500_20130720022958.cdf' ;
[A1,inf_A1]=spdfcdfread(loc_f);
BTH_GSM=A1{3};  [TTH,TvTH]=Time_date2sec(A1{1},'M');
% TINT=[40, 65, 139, 159, 202, 253,286,312,459]

%%
Tmin= 20* 24*3600 +2* 3600 + 5* 60;	Tmax = 20* 24*3600 +2* 3600 + 30* 60;
% Tmin= 20* 24*3600 +1* 3600 + 45* 60;	Tmax = 20* 24*3600 +2* 3600 + 10* 60;


% figure1=figure('Color', [1 1 1])
% axes1 = axes('Parent',figure1);
% 
% plot(T1,B1_GSM(:,1),T1,B1_GSM(:,3))
% legend('Bx','Bz' )
% 
% 
%  title(   'C1 ',...
%     'FontWeight','demi',...
%     'FontSize',20);
% ylabel( 'B [nT] ','FontWeight','demi','FontSize',20)
% xlim([Tmin, Tmax])
% XTimeLabel( axes1 )
% %!!!!!!!!!!!!!!!!!!!
% 
% figure1=figure('Color', [1 1 1])
% axes1 = axes('Parent',figure1);
% 
% plot(T2,B2_GSM(:,1),T2,B2_GSM(:,3))
% legend('Bx','Bz' )
% 
% 
%  title(   'C2 ',...
%     'FontWeight','demi',...
%     'FontSize',20);
% ylabel( 'B [nT] ','FontWeight','demi','FontSize',20)
% xlim([Tmin, Tmax])
% XTimeLabel( axes1 )
% 
% %!!!!!!!!!!!!!!!!!!
% 
% figure1=figure('Color', [1 1 1])
% axes1 = axes('Parent',figure1);
% 
% plot(T4,B4_GSM(:,1),T4,B4_GSM(:,3))
% legend('Bx','Bz' )
% 
% 
%  title(   'C4 ',...
%     'FontWeight','demi',...
%     'FontSize',20);
% ylabel( 'B [nT] ','FontWeight','demi','FontSize',20)
% xlim([Tmin, Tmax])
% XTimeLabel( axes1 )

figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T1,B1_GSM(:,1),'black',T2,B2_GSM(:,1),'red',T4,B4_GSM(:,1),'Blue',TTH,BTH_GSM(:,1),'magenta' )
ylabel( 'Bx [nT] ','FontWeight','demi','FontSize',20)

% plot(T1,B1_GSM(:,3),'black',T2,B2_GSM(:,3),'red',T4,B4_GSM(:,3),'Blue',TTH,BTH_GSM(:,3),'magenta' )
% ylabel( 'Bz [nT] ','FontWeight','demi','FontSize',20)

legend('C1','C2','C4', 'P3' )
%  title(   'Bx ',...
%     'FontWeight','demi',...
%     'FontSize',20);
xlim([Tmin, Tmax])
XTimeLabel( axes1 )

% 
% figure1=figure('Color', [1 1 1])
% axes1 = axes('Parent',figure1);
% 
% plot(T1,B1_GSM(:,3),'black',T2,B2_GSM(:,3),'red',T4,B4_GSM(:,3),'Blue')
% legend('C1','C2','C4' )
% 
% 
%  title(   'Bz ',...
%     'FontWeight','demi',...
%     'FontSize',20);
% ylabel( 'B [nT] ','FontWeight','demi','FontSize',20)
% xlim([Tmin, Tmax])
% XTimeLabel( axes1 )

% figure1 = figure('Color', [1 1 1])
% axes1 = axes('Parent',figure1);
% 
% plot(T4,B4_GSM(:,1),T4,B4_GSM(:,3))
% legend('Bx','Bz' )
% 
% % plot(T,Em)
% % legend('|E|' )
% 
% 
%  title(   'B from C4',...
%     'FontWeight','demi',...
%     'FontSize',20);
% ylabel( 'B [nT] ','FontWeight','demi','FontSize',20)
% xlim([Tmin, Tmax])
% XTimeLabel( axes1 )

%%
clear('Bm','WH')
Tmin= 20* 24*3600 +1* 3600 + 38* 60 +10;	Tmax = 20* 24*3600 +1* 3600 + 40* 60+0;

Bm=( B4_GSM(:,1).^2 + B4_GSM(:,2).^2 + B4_GSM(:,3).^2 ) .^0.5;
WH=(1.602176620898*10^-19*Bm*10^-9)/(1*9.10938356 * 10^-31) / (2*pi);

figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T4,WH,T4,2*WH)
legend('Bx','Bz' )

% plot(T,Em)
% legend('|E|' )


 title(   'B from C4',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'B [nT] ','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
