%% 基于汉宁窗的带通 FIR 滤波器
function [freq_axis, magnitude_r, phase_r, f_signal] = hannBandPassFilter(input1, input2, sampling_rate, h_t)
% 输入:
%   input1        - 通带下截止频率（Hz），标量
%   input2        - 通带上截止频率（Hz），标量
%   sampling_rate - 采样频率（Hz），标量
%   h_t           - 待滤波信号，行向量
% 输出:
%   freq_axis   - 频率向量（Hz），行向量
%   magnitude_r - 幅频响应，行向量
%   phase_r     - 相频响应（弧度），行向量
%   f_signal    - 滤波后的信号，行向量
%% 滤波器参数
order = 64;
% 滤波器阶数
filter_freq = [input1, input2];
% 带通滤波器频率范围
normal_freq = filter_freq / (sampling_rate / 2);
% 归一化频率
%% 设计汉宁窗带通滤波器
coefficients = fir1(order, normal_freq, 'bandpass', hann(order + 1));
% 使用汉宁窗设计 FIR 带通滤波器
%% 计算频率响应
response = freqz(coefficients, 1, 512, sampling_rate);
magnitude_r = abs(response);
% 幅频响应
phase_r = unwrap(angle(response));
% 相频响应
freq_axis = linspace(0, sampling_rate / 2, length(magnitude_r));
% 频率向量
%% 滤波
f_signal = filter(coefficients, 1, h_t);
% 对信号进行滤波
end
