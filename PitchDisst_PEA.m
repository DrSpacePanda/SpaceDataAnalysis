clearvars


% A_loc='C:\SDATA\Download\CSA_Download_20170908_2249\C4_CP_RAP_PAD_L3DD\C4_CP_RAP_PAD_L3DD__20130720_010000_20130720_040000_V161227.cdf';
% A_loc='C:\SDATA\Download\CSA_Download_20170908_2249\C4_CP_RAP_PAD_H\C4_CP_RAP_PAD_H__20130720_010000_20130720_040000_V160305.cdf';
A_loc='C:\SDATA\CLUSTER\20_07_2013\C2\C2_CP_PEA_PITCH_FULL_DPFlux\C2_CP_PEA_PITCH_FULL_DPFlux__20130720_000000_20130720_030000_V150822.cdf';




[A,A_inf]=spdfcdfread(A_loc);
G=A{5};
[Tt,Tv]=Time_date2sec(A{1},'M');

% Tmin=min(Tt);  Tmax=max(Tt);
Tmin=24*3600*20 + 3600*1 + 60*35 + 0;  
Tmax=24*3600*20 + 3600*2 + 60*5 + 0;

[T,Deg] = meshgrid(Tt,A{7});

%%
GG(:,:)=G(1,:,:);

GGG=zeros(size(GG) ) ;

for i=1:length(G(:,1,1))
GG(:,:)=G(i,:,:);

for k=1 : length(GG(:,1))
    for n = 1 : length(GG(k,:))
    if GG(k,n)<0
    GG(k,n)=0;
    end
    
    end
end

figure1=figure('Color', [1 1 1]);
axes1 = axes('Parent',figure1);

imagesc(Tt,A{8},(GG) )

% ylabel( 'N/|N|_{max} ','FontWeight','demi','FontSize',20)
xlim([Tmin, Tmax])
XTimeLabel( axes1 )

GGG=GGG+GG;
end
