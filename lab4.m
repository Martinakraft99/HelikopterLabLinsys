%Init

init_heli_1_2

%Find constants
constants

%find Rd 


%discretize

A = [0 1 0 0 0 0; 
    0 0 0 0 0 0; 
    0 0 0 1 0 0; 
    0 0 0 0 0 0; 
    0 0 0 0 0 1; 
    K3 0 0 0 0 0];

B = [0 0; 
    0 K1; 
    K2 0; 
    0 0; 
    0 0;
    0 0];

%Needs to be 6x5
C = [0 1 0 0 0 0;
    0 0 0 1 0 0;
    0 0 0 0 0 1];

D = 0;

timestep = 0.002;

[A_d B_d C_d D_d] = ssdata(c2d(ss(A,B,C,D),timestep));


%Prediction

function [x_bar, P_bar] = Prediction(x_hat, u, P_hat)

    if(x_bar ~= x_hat && P_bar ~= P_hat)

    x_bar = A_d * x_hat + B_d * u;

    P_bar = A_d * P_hat * traspose(A_d) + Q_d;
    
    else
        
        x_bar = x_hat;
        P_bar = P_hat; 
        
    end
end