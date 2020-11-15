Vs0 = 5.48;
Kf = -(l_c*g*m_c - l_h*g*2*m_p)/(l_h*Vs0);
K1 = l_p*Kf/(2*m_p*l_p^2);
K2 = l_h*Kf/(m_c*l_c^2+2*m_p*l_h^2);
K3 = -(l_c*m_c*g -2*l_h*m_p*g)/(m_c*l_c^2+2*m_p*(l_h^2+l_p^2));

pitch_lim = deg2rad(30);
elev_lim = deg2rad(10);