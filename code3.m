%% Normal ECG
clc, clear all, close all;

fs = 1000; % Hz

% get signals and timeseries
[time_normal, sig_normal] = data_decomposition("normal_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bnormal_data.txt");

% apply fft on signal with and without noise
[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

% IIR Filter---------------------------------------------------------------
% apply filter to signal
filt_hp = butter_high4(1,fs,sig_baseline);
filt_st = butter_stop2(1.2,4,fs,filt_hp);

% apply fft on filtered signal
[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

% Plotting ----------------------------------------------------------------
% plot signals and fft
plot_signals(time_normal, sig_normal, time_baseline, sig_baseline, filt_st)
plot_fft(freq_normal, fft_normal, freq_baseline, fft_baseline, freq_fil_sig, fft_fil_sig)

% plot correlation and autocorrelation
[autocorr, corr] = corr_and_plot(sig_normal,filt_st,fs);
fprintf('\n The maximum correlation value between original and filtered signal is %0.4f (range: [0,1])\n', max(corr));

% Mean Squared Error
errf = immse(sig_normal, filt_st);
errb = immse(sig_normal, sig_baseline);
fprintf('\n The mean-squared error between filtered and original signal is %0.4f\n', errf);
fprintf('\n The mean-squared error between original and baseline signal is %0.4f\n', errb);

% -------------------------------------------------------------------------
%% Hypertensive ECG
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("hypertensive_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bhypertensive_data.txt");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(1.8,fs,sig_baseline);
filt_st = butter_stop2(2.1,4,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

% Plotting ----------------------------------------------------------------
% plot signals and fft
plot_signals(time_normal, sig_normal, time_baseline, sig_baseline, filt_st)
plot_fft(freq_normal, fft_normal, freq_baseline, fft_baseline, freq_fil_sig, fft_fil_sig)

% plot correlation and autocorrelation
[autocorr, corr] = corr_and_plot(sig_normal,filt_st,fs);
fprintf('\n The maximum correlation value between original and filtered signal is %0.4f (range: [0,1])\n', max(corr));

% Mean Squared Error
errf = immse(sig_normal, filt_st);
errb = immse(sig_normal, sig_baseline);
fprintf('\n The mean-squared error between filtered and original signal is %0.4f\n', errf);
fprintf('\n The mean-squared error between original and baseline signal is %0.4f\n', errb);

% -------------------------------------------------------------------------
%% Hypotensive ECG
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("hypotensive_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bhypotensive_data.txt");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(0.5,fs,sig_baseline);
filt_st = butter_stop2(0.7,1.2,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

% Plotting ----------------------------------------------------------------
% plot signals and fft
plot_signals(time_normal, sig_normal, time_baseline, sig_baseline, filt_st)
plot_fft(freq_normal, fft_normal, freq_baseline, fft_baseline, freq_fil_sig, fft_fil_sig)

% plot correlation and autocorrelation
[autocorr, corr] = corr_and_plot(sig_normal,filt_st,fs);
fprintf('\n The maximum correlation value between original and filtered signal is %0.4f (range: [0,1])\n', max(corr));

% Mean Squared Error
errf = immse(sig_normal, filt_st);
errb = immse(sig_normal, sig_baseline);
fprintf('\n The mean-squared error between filtered and original signal is %0.4f\n', errf);
fprintf('\n The mean-squared error between original and baseline signal is %0.4f\n', errb);

% -------------------------------------------------------------------------
%% Asystole ECG
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("asystole_data.txt");
[time_baseline, sig_baseline] = data_decomposition("basystole_data.txt");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

% IIR Filter---------------------------------------------------------------
filt_st = butter_high4(0.5,fs,sig_baseline);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

% Plotting ----------------------------------------------------------------
% plot signals and fft
plot_signals(time_normal, sig_normal, time_baseline, sig_baseline, filt_st)
plot_fft(freq_normal, fft_normal, freq_baseline, fft_baseline, freq_fil_sig, fft_fil_sig)

% plot correlation and autocorrelation
[autocorr, corr] = corr_and_plot(sig_normal,filt_st,fs);
fprintf('\n The maximum correlation value between original and filtered signal is %0.4f (range: [0,1])\n', max(corr));

% Mean Squared Error
errf = immse(sig_normal, filt_st);
errb = immse(sig_normal, sig_baseline);
fprintf('\n The mean-squared error between filtered and original signal is %0.4f\n', errf);
fprintf('\n The mean-squared error between original and baseline signal is %0.4f\n', errb);

% -------------------------------------------------------------------------
%% Asystole ECG (with low pass filter)
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("asystole_data.txt");
[time_baseline, sig_baseline] = data_decomposition("basystole_data.txt");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

% IIR Filter---------------------------------------------------------------
filt_st = butter_low4(0.05,fs,sig_baseline);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

% Plotting ----------------------------------------------------------------
% plot signals and fft
plot_signals(time_normal, sig_normal, time_baseline, sig_baseline, filt_st)
plot_fft(freq_normal, fft_normal, freq_baseline, fft_baseline, freq_fil_sig, fft_fil_sig)

% plot correlation and autocorrelation
[autocorr, corr] = corr_and_plot(sig_normal,filt_st,fs);
fprintf('\n The maximum correlation value between original and filtered signal is %0.4f (range: [0,1])\n', max(corr));

% Mean Squared Error
errf = immse(sig_normal, filt_st);
errb = immse(sig_normal, sig_baseline);
fprintf('\n The mean-squared error between filtered and original signal is %0.4f\n', errf);
fprintf('\n The mean-squared error between original and baseline signal is %0.4f\n', errb);

% -------------------------------------------------------------------------
%% Bradycardiac ECG
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("bradycardiac_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bbradycardiac_data.txt");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(0.5,fs,sig_baseline);
filt_st = butter_stop2(0.5,1,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

% Plotting ----------------------------------------------------------------
% plot signals and fft
plot_signals(time_normal, sig_normal, time_baseline, sig_baseline, filt_st)
plot_fft(freq_normal, fft_normal, freq_baseline, fft_baseline, freq_fil_sig, fft_fil_sig)

% plot correlation and autocorrelation
[autocorr, corr] = corr_and_plot(sig_normal,filt_st,fs);
fprintf('\n The maximum correlation value between original and filtered signal is %0.4f (range: [0,1])\n', max(corr));

% Mean Squared Error
errf = immse(sig_normal, filt_st);
errb = immse(sig_normal, sig_baseline);
fprintf('\n The mean-squared error between filtered and original signal is %0.4f\n', errf);
fprintf('\n The mean-squared error between original and baseline signal is %0.4f\n', errb);

% -------------------------------------------------------------------------
%% Tachycardiac ECG
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("tachycardiac_data.txt");
[time_baseline, sig_baseline] = data_decomposition("btachycardiac_data.txt");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(2.7,fs,sig_baseline);
filt_st = butter_stop2(3.4,5.7,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

% Plotting ----------------------------------------------------------------
% plot signals and fft
plot_signals(time_normal, sig_normal, time_baseline, sig_baseline, filt_st)
plot_fft(freq_normal, fft_normal, freq_baseline, fft_baseline, freq_fil_sig, fft_fil_sig)

% plot correlation and autocorrelation
[autocorr, corr] = corr_and_plot(sig_normal,filt_st,fs);
fprintf('\n The maximum correlation value between original and filtered signal is %0.4f (range: [0,1])\n', max(corr));

% Mean Squared Error
errf = immse(sig_normal, filt_st);
errb = immse(sig_normal, sig_baseline);
fprintf('\n The mean-squared error between filtered and original signal is %0.4f\n', errf);
fprintf('\n The mean-squared error between original and baseline signal is %0.4f\n', errb);

% -------------------------------------------------------------------------
%% Normal ECG at 130 bpm
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("normal130bpm_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bnormal130bpm_data.txt");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(1.9,fs,sig_baseline);
filt_st = butter_stop2(2.6,4.1,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

% Plotting ----------------------------------------------------------------
% plot signals and fft
plot_signals(time_normal, sig_normal, time_baseline, sig_baseline, filt_st)
plot_fft(freq_normal, fft_normal, freq_baseline, fft_baseline, freq_fil_sig, fft_fil_sig)

% plot correlation and autocorrelation
[autocorr, corr] = corr_and_plot(sig_normal,filt_st,fs);
fprintf('\n The maximum correlation value between original and filtered signal is %0.4f (range: [0,1])\n', max(corr));

% Mean Squared Error
errf = immse(sig_normal, filt_st);
errb = immse(sig_normal, sig_baseline);
fprintf('\n The mean-squared error between filtered and original signal is %0.4f\n', errf);
fprintf('\n The mean-squared error between original and baseline signal is %0.4f\n', errb);

% -------------------------------------------------------------------------
%% ECG with STD of %10
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("std010_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bstd010_data.txt");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(0.8,fs,sig_baseline);
filt_st = butter_stop2(1.2,1.8,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

% Plotting ----------------------------------------------------------------
% plot signals and fft
plot_signals(time_normal, sig_normal, time_baseline, sig_baseline, filt_st)
plot_fft(freq_normal, fft_normal, freq_baseline, fft_baseline, freq_fil_sig, fft_fil_sig)

% plot correlation and autocorrelation
[autocorr, corr] = corr_and_plot(sig_normal,filt_st,fs);
fprintf('\n The maximum correlation value between original and filtered signal is %0.4f (range: [0,1])\n', max(corr));

% Mean Squared Error
errf = immse(sig_normal, filt_st);
errb = immse(sig_normal, sig_baseline);
fprintf('\n The mean-squared error between filtered and original signal is %0.4f\n', errf);
fprintf('\n The mean-squared error between original and baseline signal is %0.4f\n', errb);

% -------------------------------------------------------------------------