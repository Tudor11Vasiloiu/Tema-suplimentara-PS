%% Vasiloiu Tudor Florian 331 AC
%% a)
%Schimbarea frecven?ei de e?antionare cu factorul N/M , implementat? ca ?n
%Figura 7.11 :
% y=upfirdn(x,h,N,M) ;
%unde vectorul h con?ine coeficien?ii unui FTJ de tip FIR.
%O alt? func?ie cu acela?i scop, ?n care filtrul nu mai trebuie precizat de utilizator,
%se apeleaz? ca mai jos :
% y=resample(x,N,M) ;

% factor 3/2
N = 30;
M = 20;
A = [1 1 0 0];
P = max( [N,M] );
F = [0 0.9*pi/P 1.1*pi/P 1];
h = firpm(29,F,A);

suport = linspace(0, 10, 20);
x = 3 * sin(2*pi*suport) + 2 * sin(pi/2*suport);

y_1 = upfirdn(x, h, N, M);

% factor 3/8
N = 30;
M = 80;
A = [1 1 0 0];
P = max( [N,M] );
F = [0 0.9*pi/P 1.1*pi/P 1];
h = firpm(29,F,A);

y_2 = upfirdn(x, h, N, M);


X = freqz(x, 1, suport);
Y_1 = freqz(y_1, 1, suport);
Y_2 = freqz(y_2, 1, suport);

figure(1);
subplot(3,1,1);
stem(suport, X);
title('semnal x');
subplot(3,1,2);
stem(suport, Y_1);
title('Factor 3/2');
subplot(3,1,3);
stem(suport, Y_2);
title('Factor 3/8');
saveas(gcf, 'Pas_3_a.jpg');

%% b)
load('xilo.mat')

% 2/3
N = 20;
M = 30;
A = [1 1 0 0];
P = max( [N,M] );
F = [0 0.9*pi/P 1.1*pi/P 1];
h = firpm(29,F,A);
xilo_2_3 = upfirdn(yx, h, N, M);

% 1/2
N = 10;
M = 20;
A = [1 1 0 0];
P = max( [N,M] );
F = [0 0.9*pi/P 1.1*pi/P 1];
h = firpm(29,F,A);
xilo_1_2 = upfirdn(yx, h, N, M);

% 1/4

N = 10;
M = 40;
A = [1 1 0 0];
P = max( [N,M] );
F = [0 0.9*pi/P 1.1*pi/P 1];
h = firpm(29,F,A);
xilo_1_4 = upfirdn(yx, h, N, M);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2);
subplot(4,1,1);
plot(yx);
title('Semnal xilo');

subplot(4,1,2);
plot(xilo_2_3);
title('Semnal xilo factor 2/3');

subplot(4,1,3);
plot(xilo_1_2);
title('Semnal xilo factor 1/2');

subplot(4,1,4);
plot(xilo_1_4);
title('Semnal xilo factor 1/4');

saveas(gcf, 'Pasul_4_b.jpg');
