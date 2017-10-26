clear ('TI','TvI' , 'E_intI','RSI')


% color_map=['black','blue','red','green','magenta'];

color_map=[0 0 0 ; 1 0 0; 0 1 0; 0 0 1; 1 1 0];

% TI=T4;
% TvI=Tv4;
% E_intI=E_int4;
% RSI=Flux4;
% N_l=[1336,1342,1350,1354,1358]
% N_l=[1417,1424,1430,1439,1445]

% 
% TI=T2;
% TvI=Tv2;
% E_intI=E_int2;
% RSI=Flux2;
% N_l=[1699,1699,1699,1719,1731]
% Tmin= 20* 24*3600 +1* 3600 + 56* 60 +0;	Tmax = 20* 24*3600 +2* 3600 + 0* 60+0;

TI=T1;
TvI=Tv1;
E_intI=E_int1;
RSI=Flux1;
% N_l=[1367,1371,1377,1385,1390]
% Tmin= 20* 24*3600 +1* 3600 + 38* 60 +0;	Tmax = 20* 24*3600 +1* 3600 + 40* 60+0;
% N_l=[1501,1505,1507,1510,1513]
% Tmin= 20* 24*3600 +1* 3600 + 47* 60 +30;	Tmax = 20* 24*3600 +1* 3600 + 48* 60+30;
N_l=[1530,1540,1548,1553,1558]
Tmin= 20* 24*3600 +1* 3600 + 49* 60 +00;	Tmax = 20* 24*3600 +1* 3600 + 52* 60+0;

% TI=T;
% TvI=Tv;
% E_intI=E_int;
% RSI=Flux;
% Tmin= 20* 24*3600 +1* 3600 + 42* 60 +00;	Tmax = 20* 24*3600 +1* 3600 + 44* 60+0;
% N_l=[146,156,161,162,167]
% Tmin= 20* 24*3600 +1* 3600 + 49* 60 +00;	Tmax = 20* 24*3600 +1* 3600 + 52* 60+0;
% N_l=[275,284,301,310,328]
% Tmin= 20* 24*3600 +1* 3600 + 57* 60 +00;	Tmax = 20* 24*3600 +2* 3600 + 2* 60+0;
% N_l=[440,455,469,480,500]
%FBK 

%%
% N_l=[1708,1715,1720,1725,1735]

%%
% Tmin= 20* 24*3600 +1* 3600 + 57* 60 +00;	Tmax = 20* 24*3600 +2* 3600 + 0* 60;

% Tmin= 20* 24*3600 +1* 3600 + 50* 60 +0;	Tmax = 20* 24*3600 +2* 3600 + 48* 60;

% TI=TI-Tmin;

figure1=figure('Color', [1 1 1], 'Position', [100 200 300 400]);
axes1 = axes('Parent',figure1);
hold on
plot(TI,RSI(:,1),TI,RSI(:,2),TI,RSI(:,3),TI,RSI(:,4),TI,RSI(:,5),TI,RSI(:,6))
% plot(TI,RSI(:,5),'black',T2,RS2(:,5),'red',T4,RS4(:,5), 'blue',T,RS(:,6), 'magenta')

legend(num2str(E_intI(1)),num2str(E_intI(2)),num2str(E_intI(3)),num2str(E_intI(4)),num2str(E_intI(5)),num2str(E_intI(6)))



%  title(   'Particles flux',...
%     'FontWeight','demi',...
%     'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
% xlim([0, Tmax-Tmin])
% Tmin
E_min=10^4;E_max=10^5;
plot([TI(N_l(1)),TI(N_l(1))], [E_min,E_max],...
     [TI(N_l(2)),TI(N_l(2))], [E_min,E_max],...
     [TI(N_l(3)),TI(N_l(3))], [E_min,E_max],...
     [TI(N_l(4)),TI(N_l(4))], [E_min,E_max],...
     [TI(N_l(5)),TI(N_l(5))], [E_min,E_max] )

XTimeLabel( axes1 )
set(axes1,'YScale','log')



%%


figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);
hold on

for i=1:5;
X=E_intI(:);
Y=RSI(N_l(i),:)';
plot(X,log10(Y) )
hold on

end
legend(num2str([TvI(N_l(1),4:6)]),...
       num2str([TvI(N_l(2),4:6)]),...
       num2str([TvI(N_l(3),4:6)]),...
       num2str([TvI(N_l(4),4:6)]),...
       num2str([TvI(N_l(5),4:6)])    )
   
   xlabel ('E keV')
   ylabel ('Lg(Flux)')