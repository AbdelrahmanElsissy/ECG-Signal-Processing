function [] = plot_signals(time_normal, sig_normal, time_baseline, sig_baseline, filt_st)
% Splits Data in '.txt' format into two vectors

figure;
subplot(3,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Signal without baseline wander", 'FontSize', 20);
set(gca, 'FontSize', 14);

subplot(3,1,2)
plot(time_baseline, sig_baseline), grid on, axis tight; title("Signal with baseline wander", 'FontSize', 20);
ylabel('Amplitude (mV)');
set(gca, 'FontSize', 14);

subplot(3,1,3)
plot(time_baseline, filt_st), grid on, axis tight; title("Filtered signal", 'FontSize', 20);
xlabel('Time (s)');
set(gca, 'FontSize', 14);

linkaxes([subplot(3,1,3), subplot(3,1,2), subplot(3,1,1)], 'y');

end