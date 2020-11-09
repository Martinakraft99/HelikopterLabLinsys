%Init

init_heli_1_2


Vs0 = 5.48;

Kf = -(l_c*g*m_c - l_h*g*2*m_p)/(l_h*Vs0);

K1 = l_p*Kf/(2*m_p*l_p^2);

K2 = l_h*Kf/(m_c*l_c^2+2*m_p*l_h^2);

%K3 = h 

%find Rd 


%discretize

A = [0 1 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 1 0 0 0 0; 0 0 1 0 0];

B = [0 0; 0 K1; K2 0; 0 0; 0 0];

C = 



%Syst