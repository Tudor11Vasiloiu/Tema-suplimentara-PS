%% Vasiloiu Tudor Florian 331 AC
%% a)
lungime = 20;
suport_A = 0:0.1:lungime;
semnal = sin(suport_A);
semnal_decimat_2 = decimare(semnal, 2);
semnal_decimat_3 = decimare(semnal, 3);

figure(1);
subplot(2,1,1);
plot(suport_A, semnal);
subplot(2,1,2);
plot(semnal_decimat_2);
title('Semnal decimat cu factor 2');
saveas(gcf, 'Pas_2_a_2.jpg');

figure(2);
subplot(2,1,1);
plot(suport_A, semnal);
subplot(2,1,2);
plot(semnal_decimat_3);
title('Semnal decimat cu factor 3');
saveas(gcf, 'Pas_2_a_3.jpg');

%% b)
w1 = pi/10;
w2 = pi/6;
suport_B = 0:1:100;
x = 2 * sin(w1 * suport_B) + sin(w2 * suport_B);
x_decimat_2 = decimate(x,2);
x_decimat_3 = decimate(x,3);

X = freqz(x,1,suport_B);
X_2 = freqz(x_decimat_2,1,suport_B);
X_3 = freqz(x_decimat_3,1,suport_B);

figure(3);
subplot(3,1,1);
stem(suport_B, X);
title('semnal x');
subplot(3,1,2);
stem(suport_B, X_2);
title('semnal decimat cu 2');
subplot(3,1,3);
stem(suport_B, X_3);
title('semnal decimat cu 3');
saveas(gcf, 'Pas_2_b.jpg');

%% c)
W = [0 pi/5 pi/4 1];
A = [1 1 0 0 ];
M = 3;
h = firpm(M, W, A); 

