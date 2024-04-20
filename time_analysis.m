[samples,fs]=audioread('tchaikovsky-swan-lake.mp3');

sl=length(samples);
t=(0:sl-1)/fs;

figure;
plot(t, samples);
xlabel('t (s)');
ylabel('A');
title('Left and right channel');
grid on;

lch = samples(:,1);
rch = samples(:,2);

figure;
draw_plot(t,rch,1,'Left channel');
draw_plot(t,rch,2,'Right channel');

figure;
plot(t, lch);
xlabel('t (s)');
ylabel('A');
xlim([1, 1.05]);
title('t=<1,1.05>, left channel');
grid on;

figure;
plot(t, samples);
xlabel('t (s)');
ylabel('A');
xlim([1, 1.05]);
title('t=<1,1.05>, both channels');
grid on;

function draw_plot(t,samples,nr,pl_title)
    subplot(2,1,nr);
    plot(t, samples);
    xlabel('t (s)');
    ylabel('A');
    title(pl_title);
    grid on;
end