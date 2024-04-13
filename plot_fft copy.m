function [] = plot_fft(freq_normal, fft_normal, freq_baseline, fft_baseline, freq_fil_sig, fft_fil_sig)
% Splits Data in '.txt' format into two vectors

figure;
subplot(3,1,1);
loglog(freq_normal, fft_normal), grid on, axis tight; title("FFT-signal without baseline wander", 'FontSize', 20);
set(gca, 'FontSize', 14);

subplot(3,1,2);
loglog(freq_baseline, fft_baseline), grid on, axis tight; title("FFT-signal with baseline wander", 'FontSize', 20);
ylabel('Amplitude (mV)');
set(gca, 'FontSize', 14);

subplot(3,1,3);
loglog(freq_fil_sig, fft_fil_sig), grid on, axis tight; title("Filtered FFT-signal", 'FontSize', 20);
xlabel('Frequency (Hz)');
set(gca, 'FontSize', 14);

linkaxes([subplot(3,1,3), subplot(3,1,2), subplot(3,1,1)], 'y');


end