% System
A_c = [0  1  0; 
       0  0  0; 
       0  0  0];
        
B_c = [0  0; 
       0  K1; 
       K2 0];

% Experimental poles for (A-BK)
P = [-2; -5 - 3i; -5 + 3i];
%P = [-2; -10 - 3i; -10 + 3i];
%P = [-1; -i; i];
%P = [-2; -2 +i; -2 + i];
%P = [-2.5; -4i; 4i];
%P = [-5; -3i; 3i];

% Controller gain matrix
K = place(A_c, B_c, P)