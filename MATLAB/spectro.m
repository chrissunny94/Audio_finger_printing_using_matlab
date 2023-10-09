[y, fs] = wavread('a.wav');
y1 = y(:,1);
y2=  y(:,2);
dt = 1/fs;
t = 0:dt:(length(y)*dt)-dt;
plot(t,y1,'blue'); 

plot(t,y2,'black');
transformed = fft(y);
print(transformed);
mag = abs(transformed);
plot(mag);
xlabel('Seconds'); ylabel('Amplitude');

transformed = fft(y);
mag = abs(transformed);
plot(mag);