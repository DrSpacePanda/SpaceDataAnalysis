

%   loc_f='C:\SDATA\CLUSTER\20_07_2013\C1\C1_CP_RAP_ESPCT6\C1_CP_RAP_ESPCT6__20130720_000000_20130720_040000_V161226.cdf';
% loc_f='C:\SDATA\CLUSTER\20_07_2013\C2\C2_CP_RAP_ESPCT6\C2_CP_RAP_ESPCT6__20130720_000000_20130720_040000_V161226.cdf';
loc_f='C:\SDATA\CLUSTER\20_07_2013\C4\C4_CP_RAP_ESPCT6\C4_CP_RAP_ESPCT6__20130720_000000_20130720_040000_V161227.cdf';


[RAP,inf_RAP]=spdfcdfread(loc_f);
RS=RAP{3};  [T,Tv]=Time_date2sec(RAP{1},'M');

Tmin= 20* 24*3600 +1* 3600 + 35* 60;	Tmax = 20* 24*3600 +2* 3600 + 30* 60;
Tmin= 20* 24*3600 +1* 3600 + 35* 60;	Tmax = 20* 24*3600 +2* 3600 + 30* 60;


figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T,RS(:,2),T,RS(:,3),T,RS(:,4),T,RS(:,5))
legend(num2str(RAP{5}(2)),num2str(RAP{5}(3)),num2str(RAP{5}(4)),num2str(RAP{5}(5)))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
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

plot(T,Flux(:,2),T,Flux(:,3),T,Flux(:,4),T,Flux(:,5))
legend(num2str(RAP{5}(2)),num2str(RAP{5}(3)),num2str(RAP{5}(4)),num2str(RAP{5}(5)))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
set(axes1,'YScale','log')

%%

% 
% 
P23 =  gamma_calculation ( Flux, RAP{5}, 2,3);
   
P34 = gamma_calculation ( Flux, RAP{5}, 3,4);
   
P45 =  gamma_calculation ( Flux, RAP{5}, 4,5);

figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);

plot(T,P23,T,P34,T,P45)
legend([num2str(RAP{5}(2)),'-',num2str(RAP{5}(3))],...
       [num2str(RAP{5}(3)),'-',num2str(RAP{5}(4))],...
       [num2str(RAP{5}(4)),'-',num2str(RAP{5}(5))] )

 title(   'gamma',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'gamma','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )
