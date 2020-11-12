% Helicopter lab initializing

fprintf('TTK4115 - Helicopter lab setup\n(Martin Kraft and Andreas Tufte)\n\n')

heli_number = input('Choose Helicopter model (1-10): ');

fprintf('Initializing constants..\n')
if (heli_number < 3)
    fprintf('  constants for helicopter 1 and 2 \n')
    init_heli_1_2
else
    fprintf('  initializing constants for helicopter 3 to 10 \n')
    init_heli_3_10
end

Vs0 = 5.48;
fprintf('  setting Vs0 = %f\n', Vs0)

fprintf('  setting Kf, K1, K2 and K3\n')
Kf = -(l_c*g*m_c - l_h*g*2*m_p)/(l_h*Vs0);

K1 = l_p*Kf/(2*m_p*l_p^2);

K2 = l_h*Kf/(m_c*l_c^2+2*m_p*l_h^2);

K3 = -(l_c*m_c*g -2*l_h*m_p*g)/(m_c*l_c^2+2*m_p*(l_h^2+l_p^2));
