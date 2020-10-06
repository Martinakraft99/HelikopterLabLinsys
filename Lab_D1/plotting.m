load('(-1,i).mat') %Choose file to load
Data1 = ans;

load('(-5,3i).mat')
Data2 = ans;

load('(-2.5,4i).mat')
Data3 = ans;

%PARAM
%1  -   time           [s]       
%2  -   travel         [rad]
%3  -   travel rate    [rad/s]
%4  -   pitch          [rad]
%5  -   pitch rate     [rad/s]
%6  -   elevation      [rad]
%7  -   elevation rate [rad/s]   


figure
plot(Data1(1,:),rad2deg(Data1(4,:)),Data(1,:),rad2deg(Data2(4,1:9190)),Data(1,:),rad2deg(Data3(4,1:9190)))
title('Pitch')
xlabel('t')
ylabel('deg')
legend('(-1,i)','(-5,3i)','(-2.5,4i)');
grid on;


figure(2)
plot(Data1(1,:),rad2deg(Data1(6,:)),Data(1,:),rad2deg(Data2(6,1:9190)),Data(1,:),rad2deg(Data3(6,1:9190)))
title('Elevation')
xlabel('t')
ylabel('deg')
legend('(-1,i)','(-5,3i)','(-2.5,4i)');
grid on;


