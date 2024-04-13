%% Normal ECG
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("normal_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bnormal_data.txt");

figure;
subplot(2,1,2)
plot(time_baseline, sig_baseline), grid on, axis tight; title("Noisy signal");
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("signal w/o noise");
subplot(2,1,2)
loglog(freq_baseline, fft_baseline), grid on, axis tight; title("signal w/ noise");

% FIR Filter---------------------------------------------------------------
%hamming = fir1(24, [1.2/(fs/2), 2/(fs/2)],'stop',hamming(25));
%filt_sig = filtfilt(hamming, 1, bnormal_data);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(1,fs,sig_baseline);
filt_st = butter_stop2(1.2,4,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

figure;
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");
subplot(2,1,2)
plot(time_baseline,filt_st), grid on, axis tight; title("Filtered signal");

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("Signal w/o noise");
subplot(2,1,2)
loglog(freq_fil_sig, fft_fil_sig), grid on, axis tight; title("Filtered signal");
% -------------------------------------------------------------------------
%% Bradycardiac ECG
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("bradycardiac_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bbradycardiac_data.txt");

figure;
subplot(2,1,2)
plot(time_baseline, sig_baseline), grid on, axis tight; title("Noisy signal");
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("signal w/o noise");
subplot(2,1,2)
loglog(freq_baseline, fft_baseline), grid on, axis tight; title("signal w/ noise");

% FIR Filter---------------------------------------------------------------
%hamming = fir1(24, [1.2/(fs/2), 2/(fs/2)],'stop',hamming(25));
%filt_sig = filtfilt(hamming, 1, bnormal_data);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(0.5,fs,sig_baseline);
filt_st = butter_stop2(0.5,1,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

figure;
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");
subplot(2,1,2)
plot(time_baseline,filt_st), grid on, axis tight; title("Filtered signal");

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("Signal w/o noise");
subplot(2,1,2)
loglog(freq_fil_sig, fft_fil_sig), grid on, axis tight; title("Filtered signal");
% -------------------------------------------------------------------------
%% Hypertensive ECG
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("hypertensive_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bhypertensive_data.txt");

figure;
subplot(2,1,2)
plot(time_baseline, sig_baseline), grid on, axis tight; title("Noisy signal");
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("signal w/o noise");
subplot(2,1,2)
loglog(freq_baseline, fft_baseline), grid on, axis tight; title("signal w/ noise");

% FIR Filter---------------------------------------------------------------
%hamming = fir1(24, [1.2/(fs/2), 2/(fs/2)],'stop',hamming(25));
%filt_sig = filtfilt(hamming, 1, bnormal_data);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(1.8,fs,sig_baseline);
filt_st = butter_stop2(2.1,4,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

figure;
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");
subplot(2,1,2)
plot(time_baseline,filt_st), grid on, axis tight; title("Filtered signal");

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("Signal w/o noise");
subplot(2,1,2)
loglog(freq_fil_sig, fft_fil_sig), grid on, axis tight; title("Filtered signal");
% -------------------------------------------------------------------------
%% Hypotensive ECG
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("hypotensive_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bhypotensive_data.txt");

figure;
subplot(2,1,2)
plot(time_baseline, sig_baseline), grid on, axis tight; title("Noisy signal");
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("signal w/o noise");
subplot(2,1,2)
loglog(freq_baseline, fft_baseline), grid on, axis tight; title("signal w/ noise");

% FIR Filter---------------------------------------------------------------
%hamming = fir1(24, [1.2/(fs/2), 2/(fs/2)],'stop',hamming(25));
%filt_sig = filtfilt(hamming, 1, bnormal_data);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(0.5,fs,sig_baseline);
filt_st = butter_stop2(0.7,1.2,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

figure;
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");
subplot(2,1,2)
plot(time_baseline,filt_st), grid on, axis tight; title("Filtered signal");

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("Signal w/o noise");
subplot(2,1,2)
loglog(freq_fil_sig, fft_fil_sig), grid on, axis tight; title("Filtered signal");
% -------------------------------------------------------------------------
%% Normal ECG at 130 bpm
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("normal130bpm_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bnormal130bpm_data.txt");

figure;
subplot(2,1,2)
plot(time_baseline, sig_baseline), grid on, axis tight; title("Noisy signal");
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("signal w/o noise");
subplot(2,1,2)
loglog(freq_baseline, fft_baseline), grid on, axis tight; title("signal w/ noise");

% FIR Filter---------------------------------------------------------------
%hamming = fir1(24, [1.2/(fs/2), 2/(fs/2)],'stop',hamming(25));
%filt_sig = filtfilt(hamming, 1, bnormal_data);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(1.9,fs,sig_baseline);
filt_st = butter_stop2(2.6,4.1,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

figure;
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");
subplot(2,1,2)
plot(time_baseline,filt_st), grid on, axis tight; title("Filtered signal");

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("Signal w/o noise");
subplot(2,1,2)
loglog(freq_fil_sig, fft_fil_sig), grid on, axis tight; title("Filtered signal");
% -------------------------------------------------------------------------
%% ECG with STD010
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("std010_data.txt");
[time_baseline, sig_baseline] = data_decomposition("bstd010_data.txt");

figure;
subplot(2,1,2)
plot(time_baseline, sig_baseline), grid on, axis tight; title("Noisy signal");
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("signal w/o noise");
subplot(2,1,2)
loglog(freq_baseline, fft_baseline), grid on, axis tight; title("signal w/ noise");

% FIR Filter---------------------------------------------------------------
%hamming = fir1(24, [1.2/(fs/2), 2/(fs/2)],'stop',hamming(25));
%filt_sig = filtfilt(hamming, 1, bnormal_data);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(0.8,fs,sig_baseline);
filt_st = butter_stop2(1.2,1.8,fs,filt_hp);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

figure;
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");
subplot(2,1,2)
plot(time_baseline,filt_st), grid on, axis tight; title("Filtered signal");

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("Signal w/o noise");
subplot(2,1,2)
loglog(freq_fil_sig, fft_fil_sig), grid on, axis tight; title("Filtered signal");
% -------------------------------------------------------------------------
%% Tachycardiac ECG
clc, clear all, close all;

fs = 1000; % Hz

[time_normal, sig_normal] = data_decomposition("tachycardiac_data.txt");
[time_baseline, sig_baseline] = data_decomposition("btachycardiac_data.txt");

figure;
subplot(2,1,2)
plot(time_baseline, sig_baseline), grid on, axis tight; title("Noisy signal");
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");

[fft_normal, freq_normal] = single_sided_fft(sig_normal,fs);
[fft_baseline, freq_baseline] = single_sided_fft(sig_baseline,fs);

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("signal w/o noise");
subplot(2,1,2)
loglog(freq_baseline, fft_baseline), grid on, axis tight; title("signal w/ noise");

% FIR Filter---------------------------------------------------------------
%hamming = fir1(24, [1.2/(fs/2), 2/(fs/2)],'stop',hamming(25));
%filt_sig = filtfilt(hamming, 1, bnormal_data);

% IIR Filter---------------------------------------------------------------
filt_hp = butter_high4(2.7,fs,sig_baseline);
filt_st = butter_stop2(3.4,5.7,fs,filt_hp);
%filt_st2 = butter_stop2(6.4,8.7,fs,filt_st);

[fft_fil_sig, freq_fil_sig] = single_sided_fft(filt_st,fs); 

figure;
subplot(2,1,1)
plot(time_normal, sig_normal), grid on, axis tight; title("Original Signal");
subplot(2,1,2)
plot(time_baseline,filt_st), grid on, axis tight; title("Filtered signal");

figure;
subplot(2,1,1)
loglog(freq_normal, fft_normal), grid on, axis tight; title("Signal w/o noise");
subplot(2,1,2)
loglog(freq_fil_sig, fft_fil_sig), grid on, axis tight; title("Filtered signal");
% -------------------------------------------------------------------------