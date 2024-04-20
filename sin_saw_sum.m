clear;
load('vars.mat');

A=0.1;
fsin=[200,800];
fsaw=[300,600];
fname='sin_saw_sum.wav';

ysin=sine_sum(fsin,t,A);
ysaw=saw_sum(fsaw,t,A);

y = ysin+ysaw;

plot(tds,y);
xlim([0,10]);
ylim([-0.4,0.4]);
grid on;

play_and_save(fs,y,fname);