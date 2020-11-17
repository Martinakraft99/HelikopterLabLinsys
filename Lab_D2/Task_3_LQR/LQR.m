% Task 2, LQR

A_c = [0  1  0; 
       0  0  0; 
       0  0  0];
   
B_c = [0  0; 
       0  K1; 
       K2 0];

% Q = diag([10; 100; 100]);
   
% Cost of changing states
% Q = diag([10; 10; 5]);
% Q = diag([10; 10; 10]);
% VERY MUCH ALIKE WITH NUMBER ONE , DO NOT INCLUDE BOTH THE ONE ABOVE
% Q = diag([10; 50; 5]);
% Q = diag([50; 10; 5]);
% Q = diag([50; 10; 50]);
% Q = diag([50; 10; 150]);
% Q = diag([100; 10; 150]);
Q = diag([100; 10; 150]);



% R = diag([1; 1]);

% Cost of changing system input
% R = diag([.1; .1]);
% R = diag([.1; .1]);
% R = diag([.1; .1]);
% R = diag([.1; .1]);
% R = diag([.1; .1]);
% R = diag([.1; .1]);
R = diag([.08; .1]);

K = lqr(A_c, B_c, Q, R)

k_11 = K(1,1); 
k_13 = K(1,3); 
k_21 = K(2,1); 
k_23 = K(2,3); 


F = [k_11 k_13; k_21 k_23]