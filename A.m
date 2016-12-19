f0 = 10;    %frecventa		
T = 1/f0;   %perioada
omega0 = 2*pi*f0;   %pulsatia
step = 0.001;
t = -3*T:step:3*T;  %definire vectorul timp

%semnal sinusoidal redresat monoalternanta
figure;

x=sm(omega0*t); %se gasesc valorile redresate monoalternanta
subplot(2,2,1); %impart figura in 2 linii si 2 coloane (primul subplot)
plot(t,x);  %afiseaza semnalul
axis([-3*T 3*T 0 2]);   %defineste axis
xlabel('Timp(s)');
ylabel('Amplitudine');
title('Redresare monoalternanta');

%semnal sinusoidal redresat dubla alternanta
y=sd(omega0*t); %se gasesc valori
subplot(2,2,2); %al doilea subplot 
plot(t,y);  
axis([-3*T 3*T 0 2]);
xlabel('Timp(s)');
ylabel('Amplitudine');
title('Redresare dubla alternanta');

%functia Switch

z=fc(t,T);
subplot(2,2,3);
plot(t,z,'r');
axis([-3*T 3*T -2 2]);
xlabel('Timp(s)');
ylabel('Amplitudine');
title('functia Switch');


%functia Interruption

z=fi(t,T);
subplot(2,2,4);
plot(t,z,'r');
axis([-3*T 3*T 0 2]);
xlabel('Timp(s)');
ylabel('Amplitudine');
title('functia Interruption');