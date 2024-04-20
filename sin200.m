clear;
load('vars.mat');

f=200;
fname='sin200.wav';

y=sin(2*pi*f*t);

plot(tds,y);
xlim([0,10]);
ylim([-1,1]);
title(['f = ', num2str(f), ' Hz']);
grid on;

play_and_save(fs,y,fname);