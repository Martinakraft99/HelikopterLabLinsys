% System
A_c = [0  1  0; 
       0  0  0; 
       0  0  0];
        
B_c = [0  0; 
       0  K1; 
       K2 0];

% Experimental poles for (A-BK)
% P = [-2; -5 - 3i; -5 + 3i];
% P = [-2; -10 - 3i; -10 + 3i];
% P = [-1; -3 - 3i; -3 + 3i];
% P = [-1; -3 - 2i; -3 + 2i];
% P = [-3; -3 - 1i; -3 + 1i];
% P = [-3; -3 - 2i; -3 + 2i];
P = [-3; -3 - 3i; -3 + 3i];

% Controller gain matrix
K = place(A_c, B_c, P)