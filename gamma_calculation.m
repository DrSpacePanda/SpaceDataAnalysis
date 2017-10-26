function [G] = gamma_calculation ( FLUX, E_INT, N1,N2)

G=-( log10(FLUX(:,N2)) - log10(FLUX(:,N1)) )...
       ./(log10(E_INT(N2))-log10(E_INT(N1)));
end


