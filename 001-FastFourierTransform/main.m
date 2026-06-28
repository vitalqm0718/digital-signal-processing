%% 快速傅里叶变换（FFT）时域与频域分析仿真
clc; clear; close all;
%% 图 1：时域信号
amp = 10;       % 幅度
f = 100;        % 频率 (Hz)
t = linspace(0, 0.1, 101);  % 时间向量 (s)
signal = amp * sin(2 * pi * f * t);
figure;
plot(t, signal, 'b', 'LineWidth', 1.5);
title('Time-Domain Signal');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig1.jpg', '-djpeg', '-r600');
%% 图 2：频域幅度谱
[freqAxis, magnitudeSpectrum] = fastFourierTransform(t, signal);
figure;
plot(freqAxis, magnitudeSpectrum, 'r', 'LineWidth', 1.5);
title('Frequency-Domain Magnitude Spectrum');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig2.jpg', '-djpeg', '-r600');
