#Markov Process
clear all;
format long#long rat;
t = 100;

#P = csvread("sheet.csv");
P = [0.6 0.4; 0.3 0.7];
n = length(P);

ti = [0.5 0.5];#Initial Condition
pi = ti*P;

for i = 0:t+1

  Xn = pi*(P^i);
  
  for k = 1:n
    PIE(i+1,k) = Xn(k);
  endfor;
  
  figure(1)
  subplot(211)
  plot(i, Xn, '*');
  grid on;
  hold on;
  xlabel('Markov M');
  ylabel('system');
  title('Markov Process');
  
  if(Xn*P == Xn)#평행상태 수렴.
    return;
  endif;
endfor;


