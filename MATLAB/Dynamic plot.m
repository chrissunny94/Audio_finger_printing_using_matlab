[y,fs]=wavread('g.wav');
len=length(y);
freq=1:fs;
i=0;
for i=0:len-fs
    g=y(i*fs:(i+1)*fs);
    g=fft(g);
    figure();
    plot(freq,g);
    
    