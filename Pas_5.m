%% Vasiloiu Tudor-Florian 
% 331 AC
%% a)
suport = linspace(0, 10, 20);
x = 3 * sin(2*pi*suport) + 2 * sin(pi/2*suport);

%% b) Reducerea frecventei de esantionare se face prin decimare

% reducere cu factor 6
N = 60;
M = 10;
A = [1 1 0 0];
P = max( [N,M] );
F = [0 0.9*pi/P 1.1*pi/P 1];
h = firpm(29,F,A);

y_6 = upfirdn(x, h, N, M);

% reducere cu factor 15/2

N = 150;
M = 20;
A = [1 1 0 0];
P = max( [N,M] );
F = [0 0.9*pi/P 1.1*pi/P 1];
h = firpm(29,F,A);

y_15_2 = upfirdn(x, h, N, M);

figure(1);
subplot(3,1,1);
plot(x);
title('Semnal original');
subplot(3,1,2);
plot(y_6);
title('Semnal decimat de 6 ori');
subplot(3,1,3);
plot(y_15_2);
title('Semnal decimat de 15/2 ori');
saveas(gcf, 'Pas_5_b.jpg');

%% c)

