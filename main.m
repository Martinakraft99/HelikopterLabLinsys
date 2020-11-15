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

fprintf('  setting port number to 10\n')

PORT = 6;

fprintf('  setting Vs0, Kf, K1, K2 and K3\n')
constants;
fprintf('  setting constants for controller\n')
LQR_controller;
fprintf('  setting constants for Luenberger observer\n')
Luenberger_observer;
fprintf('  setting constants for Kalman filter\n')
Kalman_filter;


