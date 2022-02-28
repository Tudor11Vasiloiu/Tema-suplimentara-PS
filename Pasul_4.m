%% Vasiloiu Tudor Florian 331 AC
%% a)
%Schimbarea frecven?ei de e?antionare cu factorul N/M , implementat? ca în
%Figura 7.11 :
% y=upfirdn(x,h,N,M) ;
%unde vectorul h con?ine coeficien?ii unui FTJ de tip FIR.
%O alt? func?ie cu acela?i scop, în care filtrul nu mai trebuie precizat de utilizator,
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
X = 3 * sin(2*pi*suport) + 2 * sin(pi/2*suport);

y_1 = upfirdn(X, h, N, M);

% factor 3/8
N = 30;
M = 80;
A = [1 1 0 0];
P = max( [N,M] );
F = [0 0.9*pi/P 1.1*pi/P 1];
h = firpm(29,F,A);

y_2 = upfirdn(X, h, N, M);


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
load('xilo.dat')
