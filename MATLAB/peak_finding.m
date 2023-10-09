[call,fs]=wavread('a.wav');
call=call(1:fs*30);
% create spectrogram of segment
[F,T,P] = spectrogram(call,512,256,512,fs,'yaxis');
% Convert F to kHz
f_kHz=F/1000;
% Convert T to ms
t=T*1000;
% Convert amplitude to logarithmic scale
C=20*log10(P);
% plot spectrogram in spectrogram axis
surf(h_spectrogram,t,f_kHz,C,'edgecolor','flat'); 
view(h_spectrogram,0,90); 
axis(h_spectrogram,'tight');
xlabel(h_spectrogram,'Time (ms)'); 
ylabel(h_spectrogram,'kHz');
