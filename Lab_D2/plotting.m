

load('(-1,i).mat') %Choose file to load

Data = ans;     



figure
plot(Data(1,:),rad2deg(Data(4,:)))
grid on;

figure(2)
plot(Data(1,:),rad2deg(Data(6,:)))
grid on;

