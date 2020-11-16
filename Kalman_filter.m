% Full state-space matrices
A = [0  1  0  0  0  0; 
     0  0  0  0  0  0; 
     0  0  0  1  0  0; 
     0  0  0  0  0  0; 
     0  0  0  0  0  1; 
     K3 0  0  0  0  0];

B = [0  0; 
     0  K1;
     0  0;
     K2 0; 
     0  0; 
     0  0];

C = [1  0  0  0  0  0; 
     0  1  0  0  0  0; 
     0  0  1  0  0  0; 
     0  0  0  1  0  0; 
     0  0  0  0  0  1];

D = 0;

% Discretization
timestep = 0.002;
[A_d, B_d, C_d, D_d] = ssdata(c2d(ss(A,B,C,D), timestep));

% Covariance of measurements

% y_vec = load('y_vector.mat');
% R_d = cov( transpose(y_vec.ans([2:6],[3000:12706])) );
% save('Rd_flying.mat','R_d');
% Rd_ground = load('Rd_ground.mat')
% Rd_flying = load('Rd_flying.mat')

R_d_file = load('Lab_D4/Task_1_Noise_estimate/Rd_flying.mat');
R_d = R_d_file.R_d;

% Covariance of stochastic disturbance

% Q_d = 10e-6*diag([.1; 10; .1; .1; 1; 1;]);
% Q_d = 10e-6*diag([.1; .1; .1; .1; .1; .1;]);
% Q_d = 10e-6*diag([1; 1; 1; 1; 1; 1;]);
% Q_d = 10e-6*diag([.1; 10; 10; .1; 1; 1;]);
% Q_d = 10e-6*diag([.1; 10; 100; .1; 1; 1;]);
% Q_d = 10e-6*diag([.1; 10; .01; .1; 1; 1;]);
Q_d = 10e-6*diag([.05; 1; .01; .1; 1; 1;]);
