%Encoder
%1  -   time           [s]       
%2  -   travel         [rad]
%3  -   travel rate    [rad/s]
%4  -   pitch          [rad]
%5  -   pitch rate     [rad/s]
%6  -   elevation      [rad]
%7  -   elevation rate [rad/s] 


enc_t = 1;                  
enc_tra = 2;         
enc_tra_dot = 3;    
enc_p = 4;         
enc_p_dot = 5;     
enc_e = 6;      
enc_e_dot = 7;

ref_t = 1;
ref_p = 2;
ref_e_dot = 3;

x_hat_t = 1;
x_hat_p = 2;
x_hat_p_dot = 3;
x_hat_e = 4;
x_hat_e_dot = 5;
x_hat_trav = 6;
x_hat_trav_dot = 7;


day = input('Enter Day: ');
switch(day)
    case 2
        task = input('Enter task: ');
    switch(task)
        case 1
                load('Lab_D2/Task_2_Pole_placement/[-1; -3 - 2i; -3 + 2i]/input.mat') 
                input1 = ans;
                load('Lab_D2/Task_2_Pole_placement/[-1; -3 - 2i; -3 + 2i]/ref.mat') 
                ref1 = ans;
                load('Lab_D2/Task_2_Pole_placement/[-1; -3 - 2i; -3 + 2i]/x_enc.mat') 
                x_enc1 = ans;

                load('Lab_D2/Task_2_Pole_placement/[-2; -5 - 3i; -5 + 3i]/input.mat') 
                input2 = ans;
                load('Lab_D2/Task_2_Pole_placement/[-2; -5 - 3i; -5 + 3i]/ref.mat') 
                ref2 = ans;
                load('Lab_D2/Task_2_Pole_placement/[-2; -5 - 3i; -5 + 3i]/x_enc.mat') 
                x_enc2 = ans;

                load('Lab_D2/Task_2_Pole_placement/[-3; -3 - 1i; -3 + 1i]/input.mat') 
                input3 = ans;
                load('Lab_D2/Task_2_Pole_placement/[-3; -3 - 1i; -3 + 1i]/ref.mat') 
                ref3 = ans;
                load('Lab_D2/Task_2_Pole_placement/[-3; -3 - 1i; -3 + 1i]/x_enc.mat') 
                x_enc3 = ans;

                load('Lab_D2/Task_2_Pole_placement/[-3; -3 - 2i; -3 + 2i]/input.mat') 
                input4 = ans;
                load('Lab_D2/Task_2_Pole_placement/[-3; -3 - 2i; -3 + 2i]/ref.mat') 
                ref4 = ans;
                load('Lab_D2/Task_2_Pole_placement/[-3; -3 - 2i; -3 + 2i]/x_enc.mat') 
                x_enc4 = ans;

                load('Lab_D2/Task_2_Pole_placement/[-3; -3 - 3i; -3 + 3i]/input.mat') 
                input5 = ans;
                load('Lab_D2/Task_2_Pole_placement/[-3; -3 - 3i; -3 + 3i]/ref.mat') 
                ref5 = ans;
                load('Lab_D2/Task_2_Pole_placement/[-3; -3 - 3i; -3 + 3i]/x_enc.mat') 
                x_enc5 = ans;

                display('Files Loaded')

                %Finds the number of measurments
                data_size1 = size(input1,2);
                data_size2 = size(input2,2);
                data_size3 = size(input3,2);
                data_size4 = size(input4,2);
                data_size5 = size(input5,2);
                data_size6 = size(input6,2);
                
                
                figure
                p= plot(input4(ref_t,1:data_size4),rad2deg(ref4(ref_p,1:data_size4)) ...
                ,x_enc2(enc_t,1:data_size2),rad2deg(x_enc2(enc_p,1:data_size2)) ...
                ,x_enc3(enc_t,1:data_size3),rad2deg(x_enc3(enc_p,1:data_size3)) ...
                ,x_enc4(enc_t,1:data_size4),rad2deg(x_enc4(enc_p,1:data_size4)) ...
                ,x_enc5(enc_t,1:data_size5),rad2deg(x_enc5(enc_p,1:data_size5)) ...
                );
                p(1).LineStyle = '--';
                p(1).LineWidth = 2;
                title('Pitch')
                xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
                ylabel('$p\ [\mathrm{rad}]$','Interpreter','latex','Fontsize',12)
                legend('$ref$', ...
                '$-1,-3-2i$', ...
                '$-2,-5-3i$', ...
                '$3,-3-i$', ...
                '$-3,-2i$', ...
                '$-3,-3i$', ...
                'Interpreter','latex', 'FontSize',12);
                grid on;

%                 figure
%                 p= plot(input4(ref_t,1:data_size4),rad2deg(ref4(ref_p,1:data_size4)) ...
%                 ,x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_p,1:data_size1)) ...
%                 ,x_enc2(enc_t,1:data_size2),rad2deg(x_enc2(enc_p,1:data_size2)) ...
%                 ,x_enc3(enc_t,1:data_size3),rad2deg(x_enc3(enc_p,1:data_size3)) ...
%                 ,x_enc4(enc_t,1:data_size4),rad2deg(x_enc4(enc_p,1:data_size4)) ...
%                 ,x_enc5(enc_t,1:data_size5),rad2deg(x_enc5(enc_p,1:data_size5)) ...
%                 ,x_enc6(enc_t,1:data_size6),rad2deg(x_enc6(enc_p,1:data_size6)));
%                 p(1).LineStyle = '--';
%                 title('Pitch')
%                 xlabel('t')
%                 ylabel('deg')
%                 legend('reference','(-1,-3±2i)','(-2,-5±3i)','(3,-3±i)','(-3,-3±i)',('-3,±2i'),('-3,±3i'));
%                 grid on;

                figure(2)
                p1 = plot(input4(ref_t,1:data_size4),rad2deg(ref4(ref_e_dot,1:data_size4)) ...
                ,x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_e_dot,1:data_size1)) ...
                ,x_enc2(enc_t,1:data_size2),rad2deg(x_enc2(enc_e_dot,1:data_size2)) ...
                ,x_enc3(enc_t,1:data_size3),rad2deg(x_enc3(enc_e_dot,1:data_size3)) ...
                ,x_enc4(enc_t,1:data_size4),rad2deg(x_enc4(enc_e_dot,1:data_size4)) ...
                ,x_enc5(enc_t,1:data_size5),rad2deg(x_enc5(enc_e_dot,1:data_size5)) ...
                ,x_enc6(enc_t,1:data_size6),rad2deg(x_enc6(enc_e_dot,1:data_size6)) ...
                );
                p1(1).LineStyle = '--';
                title('Elevation')
                xlabel('t')
                ylabel('deg')
                legend('reference','(-1,-3±2i)','(-2,-5±3i)','(3,-3±i)','(-3,-3±i)',('-3,±2i'),('-3,±3i'));
                grid on;             
        case 2
            display('LQR')
            
            load('Lab_D2/Task_3_LQR/1/input.mat') 
            input1 = ans;
            load('Lab_D2/Task_3_LQR/1/ref.mat') 
            ref1 = ans;
            load('Lab_D2/Task_3_LQR/1/x_enc.mat') 
            x_enc1 = ans;

            load('Lab_D2/Task_3_LQR/2/input.mat') 
            input2 = ans;
            load('Lab_D2/Task_3_LQR/2/ref.mat') 
            ref2 = ans;
            load('Lab_D2/Task_3_LQR/2/x_enc.mat') 
            x_enc2 = ans;

            load('Lab_D2/Task_3_LQR/3/input.mat') 
            input3 = ans;
            load('Lab_D2/Task_3_LQR/3/ref.mat') 
            ref3 = ans;
            load('Lab_D2/Task_3_LQR/3/x_enc.mat') 
            x_enc3 = ans;

            load('Lab_D2/Task_3_LQR/4/input.mat') 
            input4 = ans;
            load('Lab_D2/Task_3_LQR/4/ref.mat') 
            ref4 = ans;
            load('Lab_D2/Task_3_LQR/4/x_enc.mat') 
            x_enc4 = ans;

            load('Lab_D2/Task_3_LQR/5/input.mat') 
            input5 = ans;
            load('Lab_D2/Task_3_LQR/5/ref.mat') 
            ref5 = ans;
            load('Lab_D2/Task_3_LQR/5/x_enc.mat') 
            x_enc5 = ans;

            load('Lab_D2/Task_3_LQR/6/input.mat') 
            input6 = ans;
            load('Lab_D2/Task_3_LQR/6/ref.mat') 
            ref6 = ans;
            load('Lab_D2/Task_3_LQR/6/x_enc.mat') 
            x_enc6 = ans;
            
            load('Lab_D2/Task_3_LQR/7/input.mat') 
            input7 = ans;
            load('Lab_D2/Task_3_LQR/7/ref.mat') 
            ref7 = ans;
            load('Lab_D2/Task_3_LQR/7/x_enc.mat') 
            x_enc7 = ans;
            
            load('Lab_D2/Task_3_LQR/8/input.mat') 
            input8 = ans;
            load('Lab_D2/Task_3_LQR/8/ref.mat') 
            ref8 = ans;
            load('Lab_D2/Task_3_LQR/8/x_enc.mat') 
            x_enc8 = ans;
            
            %Finds the number of measurments
%             data_size1 = size(input1,2);
%             data_size2 = size(input2,2);
%             data_size3 = size(input3,2);
%             data_size4 = size(input4,2);
%             data_size5 = size(input5,2);
%             data_size6 = size(input6,2);
%             data_size7 = size(input7,2);
%             data_size8 = size(input8,2);

            data_size1 = 7000;
            data_size2 = 7000;
            data_size3 = 7000;
            data_size4 = 7000;
            data_size5 = 7000;
            data_size6 = 7000;
            data_size7 = 7000;
            data_size8 = 7000;
                    
            
            figure
            p= plot(input4(ref_t,1:data_size4),rad2deg(ref4(ref_p,1:data_size4)) ...
            ,x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_p,1:data_size1)) ...
            ,x_enc6(enc_t,1:data_size6),rad2deg(x_enc6(enc_p,1:data_size6)) ...
            ,x_enc7(enc_t,1:data_size7),rad2deg(x_enc7(enc_p,1:data_size7)));
            p(1).LineStyle = '--';
            title('Pitch')
            xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
            ylabel('$p\ [\mathrm{rad}]$','Interpreter','latex','Fontsize',12)
            legend('reference','Q(10,10,5);R(.1,.1)','Q(50,10,50);R(.1,.1)','Q(100,10,150);R(.08,.1)');
            grid on;

            figure(2)
            p1= plot(x_enc6(enc_t,1:data_size6),rad2deg(x_enc6(enc_e_dot,1:data_size6)) ...
            ,x_enc7(enc_t,1:data_size7),rad2deg(x_enc7(enc_e_dot,1:data_size7)) ...
            ,input4(ref_t,1:data_size4),rad2deg(ref4(ref_e_dot,1:data_size4)));
            p1(3).LineStyle = '--';
            p1(3).LineWidth = 3;
            p1(3).Color =[0 0.4470 0.7410];
            p1(1).Color =[0.9290 0.6940 0.1250];
            p1(2).Color =[0.4940 0.1840 0.5560];

            title('Elevation')
            xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
            ylabel('$\dot{e}\ [\mathrm{rad/s}]$','Interpreter','latex','Fontsize',12)
            legend('Q(50,10,50);R(.1,.1)','Q(100,10,150);R(.08,.1)','reference');           
            grid on;
            
        case 3
            display('LQR with integral')
            
            load('Lab_D2/Task_3_LQR_with_integral/1/input.mat') 
            input1 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/1/ref.mat') 
            ref1 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/1/x_enc.mat') 
            x_enc1 = ans;

            load('Lab_D2/Task_3_LQR_with_integral/2/input.mat') 
            input2 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/2/ref.mat') 
            ref2 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/2/x_enc.mat') 
            x_enc2 = ans;

            load('Lab_D2/Task_3_LQR_with_integral/3/input.mat') 
            input3 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/3/ref.mat') 
            ref3 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/3/x_enc.mat') 
            x_enc3 = ans;

            load('Lab_D2/Task_3_LQR_with_integral/4/input.mat') 
            input4 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/4/ref.mat') 
            ref4 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/4/x_enc.mat') 
            x_enc4 = ans;

            load('Lab_D2/Task_3_LQR_with_integral/5/input.mat') 
            input5 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/5/ref.mat') 
            ref5 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/5/x_enc.mat') 
            x_enc5 = ans;

            load('Lab_D2/Task_3_LQR_with_integral/6/input.mat') 
            input6 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/6/ref.mat') 
            ref6 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/6/x_enc.mat') 
            x_enc6 = ans;
            
            load('Lab_D2/Task_3_LQR_with_integral/7/input.mat') 
            input7 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/7/ref.mat') 
            ref7 = ans;
            load('Lab_D2/Task_3_LQR_with_integral/7/x_enc.mat') 
            x_enc7 = ans;
            
            %Finds the number of measurments
            data_size1 = size(input1,2);
            data_size2 = size(input2,2);
            data_size3 = size(input3,2);
            data_size4 = size(input4,2);
            data_size5 = size(input5,2);
            data_size6 = size(input6,2);
            data_size7 = size(input7,2);

%                         figure
%             p = plot(input4(ref_t,1:data_size4),rad2deg(ref4(ref_p,1:data_size4)) ...
%             ,x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_p,1:data_size1)) ...
%             ,x_enc2(enc_t,1:data_size2),rad2deg(x_enc2(enc_p,1:data_size2)) ...
%             ,x_enc3(enc_t,1:data_size3),rad2deg(x_enc3(enc_p,1:data_size3)) ...
%             ,x_enc4(enc_t,1:data_size4),rad2deg(x_enc4(enc_p,1:data_size4)) ...
%             ,x_enc5(enc_t,1:data_size5),rad2deg(x_enc5(enc_p,1:data_size5)) ...
%             ,x_enc6(enc_t,1:data_size6),rad2deg(x_enc6(enc_p,1:data_size6)) ...
%             ,x_enc7(enc_t,1:data_size7),rad2deg(x_enc7(enc_p,1:data_size7)));
%             p(1).LineStyle = '--';
%             title('Pitch')
%             xlabel('t')
%             ylabel('deg')
%             legend('reference','1','2','3','4','5','6','7');
%             grid on;
            
            figure
            p = plot(input4(ref_t,1:data_size4),rad2deg(ref4(ref_p,1:data_size4)) ...
            ,x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_p,1:data_size1)) ...
            ,x_enc5(enc_t,1:data_size5),rad2deg(x_enc5(enc_p,1:data_size5)) ...
            ,x_enc6(enc_t,1:data_size6),rad2deg(x_enc6(enc_p,1:data_size6)) ...
            );
            p(1).LineStyle = '--';
            title('Pitch')
            xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
            ylabel('$p\ [\mathrm{rad}]$','Interpreter','latex','Fontsize',12)
            legend('reference','Q(100,10,150,1,1);R(.08,.1)'...
                ,'Q(100,10,50,1,50);R(.08,.1)','Q(150,10,50,1,50);R(0.8,0.3)');
            grid on;
            
                        figure(2)
            p1= plot(x_enc5(enc_t,1:data_size5),rad2deg(x_enc5(enc_e_dot,1:data_size5)) ...
            ,x_enc6(enc_t,1:data_size6),rad2deg(x_enc6(enc_e_dot,1:data_size6)) ...
            ,input4(ref_t,1:data_size4),rad2deg(ref4(ref_e_dot,1:data_size4)));
            p1(3).LineStyle = '--';
            p1(3).LineWidth = 3;
            p1(3).Color =[0 0.4470 0.7410];
            p1(1).Color =[0.9290 0.6940 0.1250];
            p1(2).Color =[0.4940 0.1840 0.5560];
            
%             figure(2)
%             p1= plot(input4(ref_t,1:data_size4),rad2deg(ref4(ref_e_dot,1:data_size4)) ...
%             ,x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_e_dot,1:data_size1)) ...
%             ,x_enc2(enc_t,1:data_size2),rad2deg(x_enc2(enc_e_dot,1:data_size2)) ...
%             ,x_enc3(enc_t,1:data_size3),rad2deg(x_enc3(enc_e_dot,1:data_size3)) ...
%             ,x_enc4(enc_t,1:data_size4),rad2deg(x_enc4(enc_e_dot,1:data_size4)) ...
%             ,x_enc5(enc_t,1:data_size5),rad2deg(x_enc5(enc_e_dot,1:data_size5)) ...
%             ,x_enc6(enc_t,1:data_size6),rad2deg(x_enc6(enc_e_dot,1:data_size6)));
%             p1(1).LineStyle = '--';
            title('Elevation')
            xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
            ylabel('$\dot{e}\ [\mathrm{rad/s}]$','Interpreter','latex','Fontsize',12)
            legend('Q(100,10,50,1,50);R(.08,.1)'...
                ,'Q(150,10,50,1,50);R(0.8,0.3)','reference');            
            grid on;  
    end
    
    case 4
        task = input('Enter task: ')
        switch(task)
            case(1)
                load('Lab_D4/Task_1_Noise_estimate/y_vector_ground.mat')
                ground_meas = ans;
                load('Lab_D4/Task_1_Noise_estimate/y_vector_flying.mat')
                flying_meas = ans;
                
                size_g = size(ground_meas,2);
                size_f = size(flying_meas,2);
                cut_off = 5000;
                
                figure
                plot(flying_meas(1,cut_off:size_f),flying_meas(2,cut_off:size_f), ...
                     flying_meas(1,cut_off:size_f),flying_meas(3,cut_off:size_f), ...
                     flying_meas(1,cut_off:size_f),flying_meas(4,cut_off:size_f), ...
                     flying_meas(1,cut_off:size_f),flying_meas(5,cut_off:size_f), ...
                     flying_meas(1,cut_off:size_f),flying_meas(6,cut_off:size_f));
                
%                 figure(2)
%                 plot(ground_meas(1,:),ground_meas(2,:), ...
%                      ground_meas(1,:),ground_meas(3,:), ...
%                      ground_meas(1,:),ground_meas(4,:), ...
%                      ground_meas(1,:),ground_meas(5,:), ...
%                      ground_meas(1,:),ground_meas(6,:));

                  load('Lab_D4/Task_1_Noise_estimate/Rd_flying.mat');
                  R_d = ans;
            case 4
                load('Lab_D4/Task_4_Experimentation/P_hat_diag.mat')
                p_hat = ans;
                load('Lab_D4/Task_4_Experimentation/x_hat.mat')
                x_hat = ans;
                load('Lab_D4/Task_4_Experimentation/y_vector.mat')
                y_vec = ans;
                load('Lab_D4/Task_4_Experimentation/param.mat')
                x_enc = ans;
                
                size_d = 17508;
                
                plot(x_hat(1,1:size_d),x_hat(2,1:size_d),...
                     x_enc(1,1:size_d),x_enc(3,1:size_d));
                title('Pitch')
                xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
                ylabel('$p\ [\mathrm{rad}]$','Interpreter','latex','Fontsize',12)
                legend('estimated p','encoder p');
                grid on;
                
            
            case 5

                load('Lab_D4/Task_5_Tuning/1/x_hat_K.mat') 
                x_hat_K1 = ans;
                load('Lab_D4/Task_5_Tuning/1/ref.mat') 
                ref1 = ans;
                load('Lab_D4/Task_5_Tuning/1/x_enc.mat') 
                x_enc1 = ans;

                load('Lab_D4/Task_5_Tuning/2/x_hat_K.mat') 
                x_hat_K2 = ans;
                load('Lab_D4/Task_5_Tuning/2/ref.mat') 
                ref2 = ans;
                load('Lab_D4/Task_5_Tuning/2/x_enc.mat') 
                x_enc2 = ans;

                load('Lab_D4/Task_5_Tuning/3/x_hat_K.mat') 
                x_hat_K3 = ans;
                load('Lab_D4/Task_5_Tuning/3/ref.mat') 
                ref3 = ans;
                load('Lab_D4/Task_5_Tuning/3/x_enc.mat') 
                x_enc3 = ans;

                load('Lab_D4/Task_5_Tuning/4/x_hat_K.mat') 
                x_hat_K4 = ans;
                load('Lab_D4/Task_5_Tuning/4/ref.mat') 
                ref4 = ans;
                load('Lab_D4/Task_5_Tuning/4/x_enc.mat') 
                x_enc4 = ans;

                load('Lab_D4/Task_5_Tuning/5/x_hat_K.mat') 
                x_hat_K5 = ans;
                load('Lab_D4/Task_5_Tuning/5/ref.mat') 
                ref5 = ans;
                load('Lab_D4/Task_5_Tuning/5/x_enc.mat') 
                x_enc5 = ans;

                load('Lab_D4/Task_5_Tuning/6/x_hat_K.mat') 
                x_hat_K6 = ans;
                load('Lab_D4/Task_5_Tuning/6/ref.mat') 
                ref6 = ans;
                load('Lab_D4/Task_5_Tuning/6/x_enc.mat') 
                x_enc6 = ans;

                display('files loaded')

                data_size1 = 6000;
                data_size2 = 6000;
                data_size3 = 6000;
                data_size4 = 6000;
                data_size5 = 6000;
                data_size6 = 6000;

                figure
                p1 = plot(ref1(ref_t,1:data_size1),rad2deg(ref1(ref_p,1:data_size1)) ...
                ,x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_p,1:data_size1)) ...
                ,x_hat_K1(ref_t,1:data_size1),rad2deg(x_hat_K1(x_hat_p,1:data_size1))...
                ,x_hat_K2(ref_t,1:data_size2),rad2deg(x_hat_K2(x_hat_p,1:data_size2))...
                ,x_hat_K3(ref_t,1:data_size3),rad2deg(x_hat_K3(x_hat_p,1:data_size3))...
                ,x_hat_K4(ref_t,1:data_size4),rad2deg(x_hat_K4(x_hat_p,1:data_size4))...
                );
                p1(1).LineStyle = '--';
                title('Pitch')
                xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
                ylabel('$p\ [\mathrm{rad}]$','Interpreter','latex','Fontsize',12)
                legend('Reference','Encoder','Q(1,1,1,1,1,1)','Q(.1,1,.1,1,1,1)',...
                    'Q(.1,1,.1,.1,1,1)', 'Q(.05,1,.1,.1,1,1)');
                grid on;

                figure(2)
                p2 = plot(x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_p_dot,1:data_size1)) ...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K1(x_hat_p_dot,1:data_size1))...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K2(x_hat_p_dot,1:data_size2))...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K3(x_hat_p_dot,1:data_size3))...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K4(x_hat_p_dot,1:data_size4))...
                );
                p2(1).LineStyle = '--';
                title('Pitch rate')
                xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
                ylabel('$\dot{p}\ [\mathrm{rad/s}]$','Interpreter','latex','Fontsize',12)
                legend('Encoder','Q(1,1,1,1,1,1)','Q(.1,1,.1,1,1,1)',...
                    'Q(.1,1,.1,.1,1,1)', 'Q(.05,1,.1,.1,1,1)');
                grid on;


                figure(3)
                p3 = plot(x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_e,1:data_size1)) ...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K1(x_hat_e,1:data_size1))...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K2(x_hat_e,1:data_size2))...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K3(x_hat_e,1:data_size3))...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K4(x_hat_e,1:data_size4))...
                );
                p3(1).LineStyle = '--';
                title('Elev')
                xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
                ylabel('$e\ [\mathrm{rad}]$','Interpreter','latex','Fontsize',12)
                legend('Encoder','Q(1,1,1,1,1,1)','Q(.1,1,.1,1,1,1)',...
                    'Q(.1,1,.1,.1,1,1)', 'Q(.05,1,.1,.1,1,1)');
                grid on;

                figure(4)
                p4 = plot(x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_e_dot,1:data_size1)) ...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K1(x_hat_e_dot,1:data_size1))...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K2(x_hat_e_dot,1:data_size2))...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K3(x_hat_e_dot,1:data_size3))...
                ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K4(x_hat_e_dot,1:data_size4))...
                );
                p4(1).LineStyle = '--';
                title('Elevation rate')
                xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
                ylabel('$\dot{e}\ [\mathrm{rad/s}]$','Interpreter','latex','Fontsize',12)
                legend('Encoder','Q(1,1,1,1,1,1)','Q(.1,1,.1,1,1,1)',...
                    'Q(.1,1,.1,.1,1,1)', 'Q(.05,1,.1,.1,1,1)');
                grid on;

    %             figure(5)
    %             p5 = plot(x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_e_dot,1:data_size1)) ...
    %             ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K1(x_hat_trav,1:data_size1))...
    %             ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K2(x_hat_trav,1:data_size2))...
    %             ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K3(x_hat_trav,1:data_size3))...
    %             ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K4(x_hat_trav,1:data_size4))...
    %             );
    %             title('Travel')
    %             xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
    %             ylabel('$travel\ [\mathrm{rad}]$','Interpreter','latex','Fontsize',12)
    %             legend('Encoder','Q(1,1,1,1,1,1)','Q(.1,1,.1,1,1,1)',...
    %                 'Q(.1,1,.1,.1,1,1)', 'Q(.05,1,.1,.1,1,1)');
    %             grid on;
    %             
    %              figure(6)
    %             p6 = plot(x_enc1(enc_t,1:data_size1),rad2deg(x_enc1(enc_e_dot,1:data_size1)) ...
    %             ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K1(x_hat_trav_dot,1:data_size1))...
    %             ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K2(x_hat_trav_dot,1:data_size2))...
    %             ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K3(x_hat_trav_dot,1:data_size3))...
    %             ,ref1(ref_t,1:data_size1),rad2deg(x_hat_K4(x_hat_trav_dot,1:data_size4))...
    %             );
    %             title('Travel rate')
    %             xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
    %             ylabel('$\dot{travel}\ [\mathrm{rad/s}]$','Interpreter','latex','Fontsize',12)
    %             legend('Encoder','Q(1,1,1,1,1,1)','Q(.1,1,.1,1,1,1)',...
    %                 'Q(.1,1,.1,.1,1,1)', 'Q(.05,1,.1,.1,1,1)');
    %             grid on;
    
    
            case 6
                display('comparison Luenberger and Kalman');
                
                load('Lab_D4/Task_5_Tuning/4/x_hat_K.mat');
                x_hat_K = ans;
                
                load('Lab_D4/Task_5_Tuning/4/x_hat_L.mat');
                x_hat_L = ans;
                
                load('Lab_D4/Task_5_Tuning/4/x_enc.mat');
                x_enc = ans;
                
                
                data_size = 6000;
                
                figure(1)
                plot(x_enc(enc_t,1:data_size),rad2deg(x_enc(enc_p,1:data_size))...
                    ,x_hat_K(x_hat_t,1:data_size),rad2deg(x_hat_K(x_hat_p,1:data_size))...
                    ,x_hat_L(x_hat_t,1:data_size),rad2deg(x_hat_L(x_hat_p,1:data_size)));
                title('Pitch')
                xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
                ylabel('$p\ [\mathrm{rad}]$','Interpreter','latex','Fontsize',12)
                legend('Encoder','Kalman','Luenberger');
                grid on;
                
                figure(2)
                plot(x_enc(enc_t,1:data_size),rad2deg(x_enc(enc_p_dot,1:data_size))...
                    ,x_hat_K(x_hat_t,1:data_size),rad2deg(x_hat_K(x_hat_p_dot,1:data_size))...
                    ,x_hat_L(x_hat_t,1:data_size),rad2deg(x_hat_L(x_hat_p_dot,1:data_size)));
                title('Pitch rate')
                xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
                ylabel('$\dot{p}\ [\mathrm{rad/s}]$','Interpreter','latex','Fontsize',12)
                legend('Encoder','Kalman','Luenberger');
                grid on;
                
                figure(3)
                plot(x_enc(enc_t,1:data_size),rad2deg(x_enc(enc_e,1:data_size))...
                    ,x_hat_K(x_hat_t,1:data_size),rad2deg(x_hat_K(x_hat_e,1:data_size))...
                    ,x_hat_L(x_hat_t,1:data_size),rad2deg(x_hat_L(x_hat_e,1:data_size)));
                title('Elevation')
                xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
                ylabel('$e\ [\mathrm{rad}]$','Interpreter','latex','Fontsize',12)
                legend('Encoder','Kalman','Luenberger');
                grid on;
                
                figure(4)
                plot(x_enc(enc_t,1:data_size),rad2deg(x_enc(enc_e_dot,1:data_size))...
                    ,x_hat_K(x_hat_t,1:data_size),rad2deg(x_hat_K(x_hat_e_dot,1:data_size))...
                    ,x_hat_L(x_hat_t,1:data_size),rad2deg(x_hat_L(x_hat_e_dot,1:data_size)));
                title('Elevation rate')
                xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
                ylabel('$\dot{e}\ [\mathrm{rad/s}]$','Interpreter','latex','Fontsize',12)
                legend('Encoder','Kalman','Luenberger');
                grid on;
           
        end
                
              
end


