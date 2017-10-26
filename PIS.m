clearvars


A_loc='C:\SDATA\CSA_Download_20170919_1445\C4_CP_PEA_PITCH_SPIN_PSD\C4_CP_PEA_PITCH_SPIN_PSD__20130720_013500_20130720_023000_V150826.cdf';

% A_loc='C:\SDATA\CSA_Download_20170930_1339\C1_CP_PEA_PITCH_SPIN_DPFlux\C1_CP_PEA_PITCH_SPIN_DPFlux__20020908_220000_20020908_224000_V170617.cdf';

[A,A_inf]=spdfcdfread(A_loc);
[T4,Tv4]=Time_date2sec(A{1},'M');

GG=A{27};
size(GG)

% G(:,:,:)=GG(:,:,1,:)+GG(:,:,2,:);
G(:,:)=GG(:,:,193);

size (G)



    figure1 = figure;

axes1 = axes('Parent',figure1);
hold(axes1,'on');

plot (A{21}(1,:), (G(1,:)), 'black' )
plot (A{21}(1,:), (G(7,:)), 'red' )
plot (A{21}(1,:), (G(12,:)), 'green' )

    
    box(axes1,'on');
    
xlabel( 'E [eV] ','FontWeight','demi','FontSize',20)
ylabel( 'PAD [s^3/km^6] ','FontWeight','demi','FontSize',20)

set(axes1,'FontSize',16,'XMinorTick','on','XScale','log','YMinorTick','on','YScale','log');
legend ( num2str(A{24}(1)),num2str(A{24}(7)),num2str(A{24}(12)))
% for i=1:2
% 
%     figure1 = figure;
% 
% axes1 = axes('Parent',figure1);
% hold(axes1,'on');
% 
% plot (A{23}(1,:), (G(i,:)) )
% plot (A{23}(1,:), (G(i,:)) )
% plot (A{23}(1,:), (G(i,:)) )
% 
%     
%     box(axes1,'on');
% 
% set(axes1,'XMinorTick','on','XScale','log','YMinorTick','on','YScale','log');
% 
% end
% 
