function [autocorrelation, correlation] = corr_and_plot(fixed_signal,passing_signal,sampling_freq)

% Autocorrelation
[autocorrelation, lags_ac] = xcorr(fixed_signal, fixed_signal, "normalized");
timeac = lags_ac / sampling_freq;
%Cross Correlation
[correlation, lags] = xcorr(fixed_signal, passing_signal, "normalized");
timec = lags / sampling_freq;

% Plotting
figure;
subplot(1,2,1)
plot(timeac, autocorrelation), axis tight;
title("Autocorrelation of Original Signal", "FontSize",18);
xlabel("Time (s)", "FontSize",14);
ylabel("Correlation Value (a.u.)", "FontSize",14);
subplot(1,2,2)
plot(timec, correlation), axis tight;
title("Correlation of Original Vs. Filtered Signal", "FontSize",18);
xlabel("Time (s)", "FontSize",14);
ylabel("Correlation Value (a.u.)", "FontSize",14);


end