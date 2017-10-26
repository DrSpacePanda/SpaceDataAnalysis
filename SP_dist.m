
[C1,inf_C1] = spdfcdfread('C:\WC\B_C\CoordCSA_Download_20170327_1001\C1_CP_AUX_POSGSE_1M\C1_CP_AUX_POSGSE_1M__20130720_010000_20130720_020000_V140124.cdf');
[C2,inf_C2] = spdfcdfread('C:\WC\B_C\CoordCSA_Download_20170327_1001\C2_CP_AUX_POSGSE_1M\C2_CP_AUX_POSGSE_1M__20130720_010000_20130720_020000_V140124.cdf');
[C3,inf_C3] = spdfcdfread('C:\WC\B_C\CoordCSA_Download_20170327_1001\C3_CP_AUX_POSGSE_1M\C3_CP_AUX_POSGSE_1M__20130720_010000_20130720_020000_V140124.cdf');
[C4,inf_C4] = spdfcdfread('C:\WC\B_C\CoordCSA_Download_20170327_1001\C4_CP_AUX_POSGSE_1M\C4_CP_AUX_POSGSE_1M__20130720_010000_20130720_020000_V140124.cdf');

R1=C1{2};  [TR1,TvR1]=Time_date2sec(C1{1},'M');
R2=C2{2};  [TR2,TvR2]=Time_date2sec(C2{1},'M');
R3=C3{2};  [TR3,TvR3]=Time_date2sec(C3{1},'M');
R4=C4{2};  [TR4,TvR4]=Time_date2sec(C4{1},'M');

figure
RI=abs(R3);RJ=abs(R4);TR=TR1;
plot(TR,RI(:,1)-RJ(:,1),TR,RI(:,2)-RJ(:,2),TR,RI(:,3)-RJ(:,3))
% plot3(R4-R3)