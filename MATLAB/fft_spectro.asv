fs=48000;
[data,fs]=wavread('a.wav');
a=fft(data(:,2));
dt = 1/fs;
t = 0:dt:(length(data)*dt)-dt;
plot(t,a); 
b=ifft(a);
\ \ 
xlabel('Seconds'); ylabel('Amplitude');
