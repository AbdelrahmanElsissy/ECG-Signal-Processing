function filt_signal = butter_high4(cut_f,samp_f,signal)
%   Obtains the filtered signal after a 4° order High-Pass Butterworth
%   Filter
%   cut_f = cut-off frequency
%   samp_f = sampling frequency
[num, den] = butter(4, cut_f/(samp_f/2), "low");
filt_signal = filtfilt(num, den, signal);

end