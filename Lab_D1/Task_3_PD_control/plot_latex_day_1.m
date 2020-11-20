% plotting of variables to figure

ref = load('6/ref.mat').ans;
% Pitch/elevation
y1 = load('1/x_enc.mat').ans;
y2 = load('2/x_enc.mat').ans;
y3 = load('3/x_enc.mat').ans;
y4 = load('4/x_enc.mat').ans;
y5 = load('5/x_enc.mat').ans;
y6 = load('6/x_enc.mat').ans;

% h4=figure;
% set(h4,'PaperSize',[00 10]); %set the paper size to what you want  
box on;
% Pitch::
plot(ref(1,1:6000),ref(2,1:6000),'--k')
hold on;
plot( y1(1,:), y1(4,:), '--', 'LineWidth', 1)
plot( y2(1,1:6000), 0.01+y2(4,1:6000), '--', 'LineWidth', 1)
plot( y3(1,1:6000), 0.01+y3(4,1:6000), 'LineWidth', 2)
plot( y4(1,1:6000), 0.01+y4(4,1:6000), '--', 'LineWidth', 1)
plot( y5(1,1:6000), 0.01+y5(4,1:6000), '--', 'LineWidth', 1)
plot( y6(1,1:6000), 0.01+y6(4,1:6000), '--', 'LineWidth', 1)

% Elevation::
% plot(ref(1,:),ref(3,:));
% plot( y1(1,:), y1(7,:));
% plot( y2(1,:), y2(7,:));
% plot( y3(1,:), y3(7,:));
% plot( y4(1,:), y4(7,:));
% plot( y5(1,:), y5(7,:));
% plot( y6(1,:), y6(7,:));

% The legends::
legend('$p_c$', ...
       '$-5 + 3i$', ...
       '$-5 + 2i$', ...
       '$-5 + 1.5i$', ...
       '$-5 + 0.5i$', ...
       '$-7 + 1.5i$', ...
       '$-3 + 1.5i$', ...
       'Interpreter','latex', 'FontSize',12);

% title('$top$','Interpreter','latex')
xlabel('$t\ [s]$','Interpreter','latex','Fontsize',12)
ylabel('$p\ [\mathrm{rad}]$','Interpreter','latex','Fontsize',12)
