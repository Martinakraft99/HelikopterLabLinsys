% Task 1
% Covariance of measurements

% y_vec = load('y_vector.mat');
% R_d = cov( transpose(y_vec.ans([2:6],[3000:12706])) );

% save('Rd_flying.mat','R_d');
% 
% Rd_ground = load('Rd_ground.mat')
% Rd_flying = load('Rd_flying.mat')


A = [0 1 0 0 0 0; 
    0 0 0 0 0 0; 
    0 0 0 1 0 0; 
    0 0 0 0 0 0; 
    0 0 0 0 0 1; 
    K3 0 0 0 0 0];

B = [0 0; 
    0 K1;
    0 0;
    K2 0; 
    0 0; 
    0 0];

C = [1 0 0 0 0 0; 
    0 1 0 0 0 0; 
    0 0 1 0 0 0; 
    0 0 0 1 0 0; 
    0 0 0 0 0 1];

D = 0;

% Discretization
timestep = 0.002;
[A_d, B_d, C_d, D_d] = ssdata(c2d(ss(A,B,C,D),timestep));

eigs(A_d)


% Task 4
% Covariance of stochastic disturbance
Q_d = 10e-6*diag([.1; 10; .1; .1; 1; 1;]);

