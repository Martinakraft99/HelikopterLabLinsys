%PARAM
%1  -   time           [s]       
%2  -   travel         [rad]
%3  -   travel rate    [rad/s]
%4  -   pitch          [rad]
%5  -   pitch rate     [rad/s]
%6  -   elevation      [rad]
%7  -   elevation rate [rad/s] 

switch(n)
    case 1
        
        %Load files
        %--------------------------------------
        load('(-1,i).mat') 
        Data1 = ans;

        load('(-5,3i).mat')
        Data2 = ans;

        load('(2,-2+i,-2-i).mat')
        Data3 = ans;

        load('(-2,-5-3i,-5+3i).mat')
        Data4 = ans;

        load('(-2.5,4i).mat')
        Data5 = ans;
        %--------------------------------------
        
        lowest_common = 3648;

        figure
        plot(Data1(1,1:lowest_common),rad2deg(Data1(4,1:lowest_common)) ...
            ,Data(1,1:lowest_common),rad2deg(Data2(4,1:lowest_common)) ...
            ,Data(1,1:lowest_common),rad2deg(Data3(4,1:lowest_common))  ...
            ,Data(1,1:lowest_common),rad2deg(Data4(4,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data5(4,1:lowest_common)))
        
        title('Pitch')
        xlabel('t')
        ylabel('deg')
        legend('(-1,i)','(-5,3i)','(2,-2±i)','(-2,-5±3i)','((-2.5,4i))');
        grid on;


        figure(2)
        plot(Data1(1,1:lowest_common),rad2deg(Data1(6,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data2(6,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data3(6,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data4(6,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data5(6,1:lowest_common)))
        
        title('Elevation')
        xlabel('t')
        ylabel('deg')
        legend('(-1,i)','(-5,3i)','(2,-2±i)','(-2,-5±3i)','((-2.5,4i))');
        grid on;


        figure(3)
        plot(Data1(1,1:lowest_common),rad2deg(Data1(4,1:lowest_common)) ... 
            ,Data1(1,1:lowest_common),rad2deg(Data2(4,1:lowest_common)) ... 
            ,Data1(1,1:lowest_common),rad2deg(Data4(4,1:lowest_common)) ... 
            ,Data1(1,1:lowest_common),rad2deg(Data5(4,1:lowest_common)))
        
        title('Pitch')
        xlabel('t')
        ylabel('deg')
        legend('(-1,i)','(-5,3i)','(-2,-5±3i)','((-2.5,4i))');
        grid on;


        figure(4)
        plot(Data1(1,1:lowest_common),rad2deg(Data1(6,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data2(6,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data4(6,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data5(6,1:lowest_common)))
        
        title('Elevation')
        xlabel('t')
        ylabel('deg')
        legend('(-1,i)','(-5,3i)','(-2,-5±3i)','((-2.5,4i))');
        grid on;

        
    case 2
        %Load files
        %--------------------------------------
        load('Q(10,10,10)R(10,10).mat') 
        Data1 = ans;

        load('Q(10,10,5)R(.1,.1).mat')
        Data2 = ans;

        load('Q(10,100,100)R(1,1).mat')
        Data3 = ans;

        load('Q(10,50,5)R(.1,.1).mat')
        Data4 = ans;

        load('Q(50,10,1)R(.1,.1).mat')
        Data5 = ans;
        %--------------------------------------
        
        lowest_common = 3648;
        
        figure
        plot(Data1(1,1:lowest_common),rad2deg(Data1(4,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data2(4,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data3(4,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data4(4,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data5(4,1:lowest_common)))
        
        title('Pitch')
        xlabel('t')
        ylabel('deg')
        legend('Q(10,10,10)R(10,10)','Q(10,10,5)R(.1,.1)','Q(10,100,100)R(1,1)','Q(10,50,5)R(.1,.1)','Q(50,10,1)R(.1,.1)');
        grid on;
        
        figure(2)
        plot(Data1(1,1:lowest_common),rad2deg(Data1(6,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data2(6,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data3(6,1:lowest_common)) ...
            ,Data(1,1:lowest_common),rad2deg(Data4(6,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data5(6,1:lowest_common)))
        
        title('Elevation')
        xlabel('t')
        ylabel('deg')
        legend('Q(10,10,10)R(10,10)','Q(10,10,5)R(.1,.1)','Q(10,100,100)R(1,1)','Q(10,50,5)R(.1,.1)','Q(50,10,1)R(.1,.1)');
        grid on;
        

    case 3
        %Load files
        %--------------------------------------
        load('Q(50,10,1,1,1)R(.1,.1).mat') 
        Data1 = ans;

        load('Q(50,10,1,1,10)R(.1,.1).mat')
        Data2 = ans;

        load('Q(50,10,1,1,10)R(.1,.5).mat')
        Data3 = ans;

        %--------------------------------------
        
        
        lowest_common = 3648;
        
        figure
        plot(Data1(1,1:lowest_common),rad2deg(Data1(4,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data2(4,1:lowest_common)) ... 
            ,Data(1,1:lowest_common),rad2deg(Data3(4,1:lowest_common)))
        
        title('Pitch')
        xlabel('t')
        ylabel('deg')
        legend('Q(50,10,1,1,1)R(.1,.1)','Q(50,10,1,1,10)R(.1,.1)','Q(50,10,1,1,10)R(.1,.5)');
        grid on;
        
        figure(2)
        plot(Data1(1,1:lowest_common),rad2deg(Data1(6,1:lowest_common)) ...
            ,Data(1,1:lowest_common),rad2deg(Data2(6,1:lowest_common)) ...
            ,Data(1,1:lowest_common),rad2deg(Data3(6,1:lowest_common)))
        
        title('Elevation')
        xlabel('t')
        ylabel('deg')
        legend('Q(50,10,1,1,1)R(.1,.1)','Q(50,10,1,1,10)R(.1,.1)','Q(50,10,1,1,10)R(.1,.5)');
        grid on;
      
end
    

