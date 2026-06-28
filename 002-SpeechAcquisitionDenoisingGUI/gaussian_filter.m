function [filtered_signal] = ...
    gaussian_filter(signal_with_noise, sigma)
% 高斯滤波函数
% 输入参数:
%   - signal_with_noise: 带噪声信号
%   - sigma: 高斯核的标准差
% 返回值:
%   - filtered_signal: 经过高斯滤波处理后的信号

filter_size = 2 * ceil(3 * sigma) + 1;
% 计算滤波器大小
gaussian_filter = fspecial('gaussian', [1, filter_size], sigma);
% 创建一维高斯滤波器

% 对带噪声信号进行高斯滤波
filtered_signal = conv(signal_with_noise, gaussian_filter, 'same');

end