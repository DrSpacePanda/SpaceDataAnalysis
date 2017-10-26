% TH: [42 87 138 161 205 251 300 316  460]
%     [42 87 138 163 205 254 290 312 458]
%         
% C1  [1365 1378 1406 1429 1455 1475 1495 1508 1569]
%     [1365 1385 1406 1428 1455 1475 1491 1507 1545]

% C4  [1326 1343 1376 1396 1425 1469 1528]
%     [1326 1351 1376 1396 1424 1463 1519]

% C2  [1405 1445 1483 1572 1628 1793]
%     [1405 1445 1483 1547 1609 1711]
%


figure1=figure('Color', [1 1 1])
axes1 = axes('Parent',figure1);
hold on

plot(Flux1(:,5),'black')
plot(Flux2(:,5),'red')
plot(Flux4(:,5),'blue')
plot(Flux(:,6),'magenta')

% ,T2,RS2(:,3)/max(RS2(:,3)),'red',T4,RS4(:,3)/max(RS4(:,3)), 'blue',T,RS(:,4)/max(RS(:,4)), 'magenta')
legend(num2str(E_int1(5)),num2str(E_int2(5)),num2str(E_int4(5)),num2str(E_int(6)))

 title(   'Particles flux',...
    'FontWeight','demi',...
    'FontSize',20);
ylabel( 'Particles/(cm^2 s sr keV)','FontWeight','demi','FontSize',20)
% XTimeLabel( axes1 )
set(axes1,'YScale','log')