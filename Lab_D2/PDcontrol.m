Vs0 = 5.48;

Kf = -(l_c*g*m_c - l_h*g*2*m_p)/(l_h*Vs0);

K1 = l_p*Kf/(2*m_p*l_p^2);


pole1 = -5 + 3i; % we need a minimum of 1-2 in imaginary part
%pole1 = -7 + 2i; % long settling-time on medium disturbance

pole2 = conj(pole1);