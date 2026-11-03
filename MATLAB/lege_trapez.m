function [q, qd, qdd] = lege_trapez(t, Q, V, A)
% Lege de miscare cu profil trapezoidal al vitezei (viteza initiala si finala nule).
% Q - deplasarea totala, V - viteza maxima, A - acceleratia maxima (aceleasi unitati, SI).
% Daca deplasarea e prea mica pentru a atinge V (Q < V^2/A), profilul devine triunghiular.
if Q < V^2 / A
    V = sqrt(Q * A);
end
ta = V / A;          % durata accelerarii (= durata franarii)
T  = Q / V + ta;     % durata totala a miscarii
q = zeros(size(t)); qd = q; qdd = q;
for k = 1:numel(t)
    tk = t(k);
    if tk <= 0
        q(k) = 0;
    elseif tk < ta                      % accelerare
        qdd(k) = A; qd(k) = A * tk; q(k) = A * tk^2 / 2;
    elseif tk < T - ta                  % viteza constanta
        qd(k) = V; q(k) = V * (tk - ta / 2);
    elseif tk < T                       % franare
        tr = T - tk;
        qdd(k) = -A; qd(k) = A * tr; q(k) = Q - A * tr^2 / 2;
    else
        q(k) = Q;
    end
end
end
