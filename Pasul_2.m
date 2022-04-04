%% Vasiloiu Tudor Florian 331 AC
%% a) Decimarea inseamna reducerea frecventei de esantionare cu un factor M
lungime = 20;
suport_A = 0:0.1:lungime;
semnal = sin(2 * pi * suport_A);
semnal_decimat_2 = decimare(semnal, 2);
semnal_decimat_3 = decimare(semnal, 3);

figure(1);
subplot(2,1,1);
plot(suport_A, semnal);
title('Semnal initial');
subplot(2,1,2);
plot(semnal_decimat_2);
title('Semnal decimat cu factor 2');
saveas(gcf, 'Pas_2_a_2.jpg');

figure(2);
subplot(2,1,1);
plot(suport_A, semnal);
title('Semnal initial');
subplot(2,1,2);
plot(semnal_decimat_3);
title('Semnal decimat cu factor 3');
saveas(gcf, 'Pas_2_a_3.jpg');

%% b) 
w1 = pi/10;
w2 = pi/6;
suport_B = 0:1000;
x = 2 * sin(2 * pi * w1 * suport_B) + sin(2 * pi * w2 * suport_B);
x_decimat_2 = decimate(x,2);
x_decimat_3 = decimate(x,3);

X = fft(x);
X_2 = fft(x_decimat_2);
X_3 = fft(x_decimat_3);

figure(3);
subplot(3,2,1);
plot(db(x));
title('Semnal sinusoidal');
subplot(3,2,3);
plot(db(x_decimat_2));
title('Semnalul decimat cu 2');
subplot(3,2,5);
plot(db(x_decimat_3));
title('Semnalul decimat cu 3');

subplot(3,2,2);
plot(db(X));
title('Spectrul semnalului sinusoidal');
subplot(3,2,4);
plot(db(X_2));
title('Spectrul semnalului decimat cu 2');
subplot(3,2,6);
plot(db(X_3));
title('Spectrul semnalului decimat cu 3');
saveas(gcf, 'Pas_2_b.jpg');

%% c)
N=1000;
M=2;
n=0:N-1;
f1=pi/6;
f2=pi/10;
x=2*sin(2*pi*f1*n)+sin(2*pi*f2*n);
W = [0 0.3/pi 0.4/pi 1];
A = [1 1 0 0];
h = firls(49, W, A);
x=filter(h,1,x);
figure;
subplot(3,1,1)
plot(db(x));
title('Spectrul Semnalului initial');
y=decimate(x,M);
subplot(3,1,2);
plot(db(y));
title('Spectrul Semnalului decimat cu 2');
M=3;
y=decimate(x,M);
subplot(3,1,3);
plot(db(y));
title('Spectrul Semnalului decimat cu 3')


