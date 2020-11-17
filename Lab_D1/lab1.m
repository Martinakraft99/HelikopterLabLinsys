% Nb! Run main.m first

%Vs0 = 5.48;
%Kf = -(l_c*g*m_c - l_h*g*2*m_p)/(l_h*Vs0);
%K1 = l_p*Kf/(2*m_p*l_p^2);

% Task 3 - PD control
% Experimental poles

% pole1 = -7 + 1i;
% pole1 = -1 + 1i;
% pole1 = -2.5 + 4i;
% pole1 = -5 + 3i;
% pole1 = -5 + 2i;
% pole1 = -5 + 1.5i;

%new tests
 
% pole1 = -5 + 3i;
% pole1 = -5 + 2i;
pole1 = -5 + 1.5i;
% pole1 = -5 + .5i;
% pole1 = -7 + 1.5i;
% pole1 = -3 + 1.5i;

pole2 = conj(pole1);

% we need a minimum of 1-2 in imaginary part

% long settling-time on medium disturbance:
%pole1 = -7 + 2i;

