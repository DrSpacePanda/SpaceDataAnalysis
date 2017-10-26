% TINT=[131553, 134374, 139854, 143692,148508,158274]


clear all

loc_f='C:\SDATA\CLUSTER\20_07_2013\C4\C4_CP_RAP_ESPCT6\C4_CP_RAP_ESPCT6__20130720_000000_20130720_040000_V161227.cdf';

[RAP,inf_RAP]=spdfcdfread(loc_f);
RS4=RAP{3};  [T4,Tv4]=Time_date2sec(RAP{1},'M'); E_int4=RAP{5};


Flux4 = zeros ( size(RS4));
ks=2
for j=1:length(RS4(1,:));
    for i =1+ks : length(T4)-ks
        S=0;
        for ii = i-ks : i+ks
        S= S + RS4(ii,j);
        end
        Flux4(i,j) = (1/(2*ks+1)) * S;

    end
end


%   loc_f='C:\SDATA\CLUSTER\20_07_2013\C1\C1_CP_RAP_ESPCT6\C1_CP_RAP_ESPCT6__20130720_000000_20130720_040000_V161226.cdf';
loc_f='C:\SDATA\CLUSTER\20_07_2013\C2\C2_CP_RAP_ESPCT6\C2_CP_RAP_ESPCT6__20130720_000000_20130720_040000_V161226.cdf';

[RAP,inf_RAP]=spdfcdfread(loc_f);
RS2=RAP{3};  [T2,Tv2]=Time_date2sec(RAP{1},'M'); E_int2=RAP{5};

Flux2 = zeros ( size(RS2));
ks=2
for j=1:length(RS2(1,:));
    for i =1+ks : length(T2)-ks
        S=0;
        for ii = i-ks : i+ks
        S= S + RS2(ii,j);
        end
        Flux2(i,j) = (1/(2*ks+1)) * S;

    end
end

   loc_f='C:\SDATA\CLUSTER\20_07_2013\C1\C1_CP_RAP_ESPCT6\C1_CP_RAP_ESPCT6__20130720_000000_20130720_040000_V161226.cdf';

[RAP,inf_RAP]=spdfcdfread(loc_f);
RS1=RAP{3};  [T1,Tv1]=Time_date2sec(RAP{1},'M');E_int1=RAP{5};

Flux1 = zeros ( size(RS1));
ks=2
for j=1:length(RS2(1,:));
    for i =1+ks : length(T1)-ks
        S=0;
        for ii = i-ks : i+ks
        S= S + RS1(ii,j);
        end
        Flux1(i,j) = (1/(2*ks+1)) * S;

    end
end

loc_f='C:\SDATA\THEMIS\20_07_2013\thd_l2s_sst_20130720013500_20130720022958.cdf'
TINT=[131553, 134374, 139854, 143692,148508,158274]
TINT=[131553, 134374, 139854, 143692,148508,158274]

[RAP,inf_RAP]=spdfcdfread(loc_f);
RS=RAP{3};  [T,Tv]=Time_date2sec(RAP{1},'M'); E_int=RAP{4}(1,:)/1000;

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

%%

% Tmin= 20* 24*3600 +1* 3600 + 35* 60;	Tmax = 20* 24*3600 +2* 3600 + 30* 60;
Tmin= 20* 24*3600 +1* 3600 + 35* 60;	Tmax = 20* 24*3600 +1* 3600 + 58* 60;

%%
figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T1,RS1(:,2)/max(RS1(:,2)),'black',T2,RS2(:,2)/max(RS2(:,2)),'red',T4,RS4(:,2)/max(RS4(:,2)), 'blue',T,RS(:,3)/max(RS(:,3)), 'magenta')
legend(num2str(E_int1(2)),num2str(E_int2(2)),num2str(E_int4(2)),num2str(E_int(3)))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
set(axes1,'YScale','log')



figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T1,RS1(:,3)/max(RS1(:,3)),'black',T2,RS2(:,3)/max(RS2(:,3)),'red',T4,RS4(:,3)/max(RS4(:,3)), 'blue',T,RS(:,4)/max(RS(:,4)), 'magenta')
legend(num2str(E_int1(3)),num2str(E_int2(3)),num2str(E_int4(3)),num2str(E_int(4)))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
set(axes1,'YScale','log')



figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T1,RS1(:,4)/max(RS1(:,4)),'black',T2,RS2(:,4)/max(RS2(:,4)),'red',T4,RS4(:,4)/max(RS4(:,4)), 'blue',T,RS(:,5)/max(RS(:,5)), 'magenta')
legend(num2str(E_int1(4)),num2str(E_int2(4)),num2str(E_int4(4)),num2str(E_int(5)))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
set(axes1,'YScale','log')



figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T1,RS1(:,5)/max(RS1(:,5)),'black',T2,RS2(:,5)/max(RS2(:,5)),'red',T4,RS4(:,5)/max(RS4(:,5)), 'blue',T,RS(:,6)/max(RS(:,6)), 'magenta')

% plot(T1,RS1(:,5),'black',T2,RS2(:,5),'red',T4,RS4(:,5), 'blue',T,RS(:,6), 'magenta')

legend(num2str(E_int1(5)),num2str(E_int2(5)),num2str(E_int4(5)),num2str(E_int(6)))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
set(axes1,'YScale','log')

%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);
hold on

plot(T1,gamma_calculation ( Flux1, E_int1, 4,5),'black',...
     T2,gamma_calculation ( Flux2, E_int2, 4,5),'red',...
     T4,gamma_calculation ( Flux4, E_int4, 4,5),'blue',...
     T ,gamma_calculation ( Flux, E_int, 5,6),'magenta')

% plot(T1,RS1(:,5),'black',T2,RS2(:,5),'red',T4,RS4(:,5), 'blue',T,RS(:,6), 'magenta')

% legend(num2str(E_int1(5)),num2str(E_int2(5)),num2str(E_int4(5)),num2str(E_int(6)))
% 
% 
% ylabel( 'gamma ','FontWeight','demi','FontSize',20)
% xlim([Tmin, Tmax])
% XTimeLabel( axes1 )
% % set(axes1)
% figure1=figure('Color', [1 1 1])
% axes1 = axes('Parent',figure1);

h= plot(T1,gamma_calculation ( Flux1, E_int1, 3,4),'black',...
     T2,gamma_calculation ( Flux2, E_int2, 3,4),'red',...
     T4,gamma_calculation ( Flux4, E_int4, 3,4),'blue',...
     T ,gamma_calculation ( Flux, E_int, 4,5),'magenta')

 set(h,'LineStyle','--');
 
% plot(T1,RS1(:,5),'black',T2,RS2(:,5),'red',T4,RS4(:,5), 'blue',T,RS(:,6), 'magenta')

legend([num2str(E_int1(4)),'-',num2str(E_int1(5))],...
       [num2str(E_int2(4)),'-',num2str(E_int2(5))],...
       [num2str(E_int4(4)),'-',num2str(E_int4(5))],...
       [num2str(E_int(5)),'-',num2str(E_int(6))],...
       ...
       [num2str(E_int1(3)),'-',num2str(E_int1(4))],...
       [num2str(E_int2(3)),'-',num2str(E_int2(4))],...
       [num2str(E_int4(3)),'-',num2str(E_int4(4))],...
       [num2str(E_int(4)),'-',num2str(E_int(5))])
       

ylabel( 'gamma ','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )

%%

% Plot1( T1, RS1, Flux1, E_int1 )