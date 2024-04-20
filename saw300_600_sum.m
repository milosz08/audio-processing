clear;
load('vars.mat');

A=0.1;
f=[300,600];
fname='saw300_600_sum.wav';

y = saw_sum(f,t,A);

plot(tds,y);
xlim([0,10]);
ylim([-0.2,0.2]);
grid on;

play_and_save(fs,y,fname);
