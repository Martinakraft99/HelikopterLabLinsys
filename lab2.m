%initialize
heli = input('Chose heli (1-10): ');
if(heli < 3)
    init_heli_1_2
else
    init_heli_3_10
end

%set constants
Vs0 = 5.48;

Kf = -(l_c*g*m_c - l_h*g*2*m_p)/(l_h*Vs0);

K1 = l_p*Kf/(2*m_p*l_p^2);

K2 = l_h*Kf/(m_c*l_c^2+2*m_p*l_h^2);

n = input('Chose task (1-3): ');
switch(n)
    case 1
        disp('Task 1, Pole Placement')
        
        A = [0 1 0; 0 0 0; 0 0 0];
        B = [0 0; 0 K1; K2 0];
        
        syms p_1 p_2 p_3;
        
        P = [-2; -5 - 3*1i; -5 + 3*1i];
        
        K = place(A,B,P)
          
        %Runs plotting.m
        
        plotting

    case 2
        disp('Task 2, LQR')

        A = [0 1 0; 0 0 0; 0 0 0];
        B = [0 0; 0 K1; K2 0];
        
        Q = diag([50; 10; 1]);
        
        R = diag([.1; .5]);

        K = lqr(A,B,Q,R)

        k_11 = K(1,1); 
        k_13 = K(1,3); 
        k_21 = K(2,1); 
        k_23 = K(2,3); 


        F = [k_11 k_13; k_21 k_23]
        
        %Runs plotting.m
        plotting

        
    case 3
        disp('Task 2, LQR augmented system')

        A = [0 1 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 1 0 0 0 0; 0 0 1 0 0];
        B = [0 0; 0 K1; K2 0; 0 0; 0 0];
        
        Q = diag([50; 10; 1; 1; 5]);
        
        R = diag([.1; .5]);

        K = lqr(A,B,Q,R)

        k_11 = K(1,1); 
        k_13 = K(1,3); 
        k_21 = K(2,1); 
        k_23 = K(2,3); 


        F = [k_11 k_13; k_21 k_23]
        
        %Runs plotting.m
        plotting

end
