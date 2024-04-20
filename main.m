fs=44100;       % sampling frequency (Hz) 
Ts=1/fs;        % sampling period
td=4;           % duration (in seconds)
t=0:Ts:td-Ts;   % time vector
tds=t*1000;     % duration (in miliseconds)

save('vars.mat','fs', 'Ts', 'td', 't', 'tds');
