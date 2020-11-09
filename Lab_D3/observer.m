K3 = l_h*Kf*Vs0/(m_c*l_c^2 + 2*m_p*(l_h^2+l_p^2));

% Observer matrices
Ao = [0  1 0 0 0; 
      0  0 0 0 0; 
      0  0 0 1 0; 
      0  0 0 0 0; 
      K3 0 0 0 0];

Bo = [0  0; 
      0  K1; 
      0  0; 
      K2 0; 
      0  0];
 
Co = eye(5);

po = 5*[-1; -4; -4+0.2i; -4-0.2i; -0.5];
  
L = transpose(place(transpose(Ao),transpose(Co), po));

[v,e] = eig(Ao-L*Co)