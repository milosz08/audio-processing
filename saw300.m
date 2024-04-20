clear;
load('vars.mat');

A=0.1;
f=300;
T=1/f;
fname='saw300.wav';

y=A*(-2*abs(mod(t,T)/T-1)+1);

plot(tds,y);
xlim([0,10]);
ylim([-0.1,0.1]);
title(['f = ', num2str(f), ' Hz']);
grid on;

play_and_save(fs,y,fname);