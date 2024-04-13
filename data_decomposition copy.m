function [time, signal] = data_decomposition(file_name)
% Splits Data in '.txt' format into two vectors

data = load(file_name);

time_raw = data(:,1);
signal_raw = data(:,2);

% segment = numel(signal_raw) / 8;
% signal = signal_raw((segment*2):(segment*6));
% time = time_raw((segment*2):(segment*6));

% extract 10 seconds of each signal
min_time = 1; % s % lower time limit
max_time = 11; % s % upper time limit
fs = 1000; % Hz % sampling frequency
min_samples = fs * min_time;
max_samples = fs * max_time;

signal = signal_raw(min_samples:max_samples);
time = time_raw(min_samples:max_samples);

end