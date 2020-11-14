% Augmented system
A_a = [0  1  0  0  0; 
      0  0  0  0  0; 
      0  0  0  0  0; 
      1  0  0  0  0; 
      0  0  1  0  0];
  
B_a = [0  0; 
      0  K1; 
      K2 0; 
      0  0; 
      0  0];

% Weighting matrices
Q = diag([100; 10; 1;  10;  70]);
R = diag([.1; .5]);

% LQR gain matrix
K = lqr(A_,B_,Q,R);

k_11 = K(1,1); 
k_13 = K(1,3); 
k_21 = K(2,1); 
k_23 = K(2,3); 

F = [k_11 k_13; k_21 k_23];