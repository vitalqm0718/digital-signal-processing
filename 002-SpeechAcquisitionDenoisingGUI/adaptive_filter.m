%% RLS自适应滤波器子函数
% 输入参数:
%   - noise_0: 噪声信号
%   - signal_with_noise: 带噪声信号
%   - M: 自适应滤波器阶数
% 返回值:
%   - filtered_signal: 经过自适应滤波器处理后的信号

function [filtered_signal] = ...
    adaptive_filter(noise_0, signal_with_noise, M)
% adaptive_filter函数接受噪声信号noise_0
% 带噪声信号signal_with_noise和自适应滤波器阶数M作为输入参数
% 并返回经过自适应滤波器处理后的信号filtered_signal。

lambda = 0.99;
% 设置自适应滤波器的遗忘因子lambda

P0 = 10*eye(M);

W0=zeros(M,1);

Zi=zeros(M-1,1);

Hadapt = dsp.RLSFilter(M, 'ForgettingFactor', lambda);
% 创建一个RLS（递归最小二乘）自适应滤波器对象Hadapt
% 设置滤波器的阶数为M
% 遗忘因子为lambda

[~, filtered_signal] = Hadapt(noise_0, signal_with_noise);
% 使用自适应滤波器对象Hadapt
% 对噪声信号noise_0和带噪声信号signal_with_noise进行滤波处理
% 得到经过滤波器处理后的信号filtered_signal


end




































