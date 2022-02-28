%% Vasiloiu Tudor Florian 331 AC
%% a)

suport_A = linspace(0, 10, 9);

x = sin(2*pi*suport_A);
y_2 = interp(x, 2);
y_3 = interp(x, 3);

figure(1);
subplot(3,1,1);
plot(x);
title('Semnal original');
subplot(3,1,2);
plot(y_2);
title('Semnal interpolat 2');
subplot(3,1,3);
plot(y_3);
title('Semnal interpolat 3');
saveas(gcf, 'Pas_3_a.jpg');

%% b)

X = 3 * sin(2*pi*suport_A) + 2 * sin(pi/2*suport_A);
Y_2 = interp(X,2);
Y_3 = interp(X,3);

figure(2);
subplot(3,1,1);
plot(X);
title('Semnal original');
subplot(3,1,2);
plot(Y_2);
title('Semnal interpolat 2');
subplot(3,1,3);
plot(Y_3);
title('Semnal interpolat 3');
saveas(gcf, 'Pas_3_b.jpg');

%% c)
