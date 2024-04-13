function filt_signal = butter_stop2(cut_f_low,cut_f_high,samp_f,signal)
%   Obtains the filtered signal after a 2° order Stop-Pass Butterworth
%   Filter
%   cut_f_low = lower cut-off frequency
%   cut_f_high = higher cut-off frequency
%   samp_f = sampling frequency
[num, den] = butter(2, [cut_f_low/(samp_f/2), cut_f_high/(samp_f/2)], "stop");
filt_signal = filtfilt(num, den, signal);

end