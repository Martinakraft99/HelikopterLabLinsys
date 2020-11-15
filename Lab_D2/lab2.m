% Task 1, Pole Placement
        
% A_c = [0 1 0; 0 0 0; 0 0 0];
% B_c = [0 0; 0 K1; K2 0];
% 
% syms p_1 p_2 p_3;
% 
% P = [-2; -5 - 3*1i; -5 + 3*1i];
% 
% K = place(A_c, B_c, P)

    
% Task 2, LQR

% A_c = [0 1 0; 0 0 0; 0 0 0];
% B_c = [0 0; 0 K1; K2 0];
% 
% Q = diag([50; 10; 1]);
% 
% R = diag([.1; .5]);
% 
% K = lqr(A_c, B_c, Q, R)
% 
% k_11 = K(1,1); 
% k_13 = K(1,3); 
% k_21 = K(2,1); 
% k_23 = K(2,3); 
% 
% 
% F = [k_11 k_13; k_21 k_23]

% Task 3, LQR augmented system')

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

% Cost of changing states
%Q = diag([50; 10; 1; 1; 1]);
%Q = diag([50; 10; 1; 1; 10]);
% Q = diag([50; 10; 1; 1; 10]);
% Q = diag([50; 10; 1; 10; 70]);
Q = diag([100; 10; 1; 10; 10]);
% Q = diag([100; 10; 1; 10; 70]);


% Cost of changing system input
% R = diag([.1; .1]);
%R = diag([.1; .1]);
% R = diag([.1; .5]);
% R = diag([.1; .5]);
R = diag([.1; .5]);
% R = diag([.1; .5]);

K = lqr(A_a, B_a, Q, R)

k_11 = K(1,1); 
k_13 = K(1,3); 
k_21 = K(2,1); 
k_23 = K(2,3); 


F = [k_11 k_13; k_21 k_23]

