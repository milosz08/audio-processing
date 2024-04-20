clear;
load('vars.mat');

A=0.1;
f=200;
fname='sin200_a0_1.wav';

y=A*sin(2*pi*f*t);

plot(tds,y);
xlim([0,10]);
ylim([-0.1,0.1]);
title(['f = ', num2str(f), ' Hz']);
grid on;

play_and_save(fs,y,fname);