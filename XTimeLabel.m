function [ ] = XTimeLabel( axes1 )


TUTD=get(axes1,'XTick');
for i=1:length(TUTD);
%     i=1
    N=TUTD(i);
    NN=fix( N/(24*3600) );
    HH=fix( (N-NN*24*3600)/3600 );  
    MM=fix( (N-NN*24*3600 - HH*3600)/60 );
    SS=fix( (N-NN*24*3600 - HH*3600 - MM*60) );
    
     sh=size(num2str(HH),2); sm=size(num2str(MM),2) ; ss=size(num2str(SS),2);
    if sh==1
        HHs=['0',num2str(HH)];
    else
        HHs=[num2str(HH)];
    end
    
    if sm==1
        MMs=['0',num2str(MM)];
    else
        MMs=[num2str(MM)];
    end
    
    if ss==1
        SSs=['0',num2str(SS)];
    else
        SSs=[num2str(SS)];
    end
        
      TUK{i}=[ HHs , ':',MMs , ':',SSs];

end
% TUK
set(axes1,'XTickLabel',TUK);
xlabel('HH:MM:SS UT','FontWeight','demi','FontSize',20);

% set(axes1,'XTickLabel',...
%     {'5:00:00','5:03:20','5:06:40','5:10:00','5:13:20','5:16:40',...
%     '5:20:00','5:23:20','5:26:40','5:30:00'});
end

