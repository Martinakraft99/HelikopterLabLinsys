% Observer matrices
Ao = [0  1  0  0  0; 
      0  0  0  0  0; 
      0  0  0  1  0; 
      0  0  0  0  0; 
      K3 0  0  0  0];
  
Bo = [0  0; 
      0  K1; 
      0  0; 
      K2 0; 
      0  0];
 
Co = eye(5);

% Experimental poles
po = 5*[-1; -4; -4+0.2i; -4-0.2i; -0.5];

% Luenberger gain matrix
L = transpose( place( transpose(Ao), transpose(Co), po) );

% Eigenvectors and -values
[v, e] = eig(Ao - L*Co)