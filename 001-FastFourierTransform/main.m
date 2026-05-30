%% 快速傅里叶变换（FFT）
% 不要觉得FFT很简单，简单的东西中往往会忽略一些细节
% 实际中很多处理都没有考虑坐标轴的正确变换和幅度的正确对应
clc;clear;close all;
%% 时域信号
amp = 10;
f = 100;
t = linspace(0, 0.1, 101);
signal = amp * sin(2 * pi * f * t);
%% 调用 fastFourierTransform 函数
[freqAxis, magnitudeSpectrum] = fastFourierTransform(t, signal);
%% 绘图
figure;plot(t, signal, 'b', 'LineWidth', 1);
xlabel('时间 (s)');ylabel('幅度');title('时域信号');
grid on;
figure;plot(freqAxis, magnitudeSpectrum, 'r', 'LineWidth', 1);
xlabel('频率 (Hz)');ylabel('幅度');title('频域幅度谱');
grid on;
