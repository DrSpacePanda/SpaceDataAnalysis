function [Tout, T_v9]= Time_date2sec(Tin,par)

T_v9=irf_time (Tin, 'date>vector9');


% Seconds From Start Of Day

if par=='S'

Tout=3600*T_v9(:,4) + 60*T_v9(:,5) + T_v9(:,6) ...
    + 10^-3 * T_v9(:,7)+ 10^-6 * T_v9(:,8)+ 10^-9 * T_v9(:,9);

end

%%
% Seconds From Start Of Month

if par=='M'

Tout=24*3600*T_v9(:,3)+3600*T_v9(:,4) + 60*T_v9(:,5) + T_v9(:,6) ...
    + 10^-3 * T_v9(:,7)+ 10^-6 * T_v9(:,8)+ 10^-9 * T_v9(:,9);
end

end