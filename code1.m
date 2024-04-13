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
corr_and_plot(sig_normal, filt_st,fs)
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
corr_and_plot(sig_normal, filt_st,fs)
% -------------------------------------------------------------------------