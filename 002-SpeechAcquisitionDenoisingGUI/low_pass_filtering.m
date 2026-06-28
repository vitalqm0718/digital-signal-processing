
function [filtered_signal] = ...
    low_pass_filtering(order, cutoffFreq, signal_with_noise, sample_rate)
% 低通滤波器函数
% 输入参数:
%   - order: 滤波器阶数
%   - cutoffFreq: 截止频率
%   - signal_with_noise: 带噪声信号
%   - sample_rate: 采样率
% 返回值:
%   - filtered_signal: 经过低通滤波器处理后的信号

[b, a] = butter(order, cutoffFreq / (sample_rate/2), 'low');
% 使用butter函数设计一个低通滤波器
% 参数order表示滤波器阶数
% 参数cutoffFreq是截止频率，归一化到采样率的一半
% 'low'表示低通滤波器

filtered_signal = filter(b, a, signal_with_noise);
% 使用filter函数对带噪声信号signal_with_noise进行低通滤波处理
% 使用设计好的滤波器系数b和a

end