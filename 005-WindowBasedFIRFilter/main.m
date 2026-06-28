%% 窗函数法 FIR 带通滤波器分离多频正弦信号 — 主仿真脚本
clc; clear; close all;
%% 参数设置
sampling_rate = 1000;
% 采样率（Hz）
dt = 1 / sampling_rate;
% 时间间隔（秒）
time = 0:dt:1;
% 时间向量（0 到 1 秒）
%% 生成三个不同频率的正弦信号
signal_1 = sin(2 * pi * 50 * time);
signal_2 = sin(2 * pi * 350 * time);
signal_3 = sin(2 * pi * 400 * time);
% 三个频率：50 Hz、350 Hz、400 Hz
%% 图 1：各频率分量时域波形
figure;
subplot(3, 1, 1);
plot(time, signal_1, 'b', 'LineWidth', 1.5);
title('50 Hz Sine Signal');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 1, 2);
plot(time, signal_2, 'b', 'LineWidth', 1.5);
title('350 Hz Sine Signal');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 1, 3);
plot(time, signal_3, 'b', 'LineWidth', 1.5);
title('400 Hz Sine Signal');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig1.jpg', '-djpeg', '-r600');
%% 合成信号及其频谱分析
h_t = signal_1 + signal_2 + signal_3;
% 合成三个正弦信号
H_omega = fftshift(fft(h_t));
% 傅里叶变换
N = length(h_t);
% 信号长度
frequency = (-N/2:N/2-1) * sampling_rate / N;
% 频率向量
%% 图 2：合成信号时域波形与幅频特性
figure;
subplot(2, 1, 1);
plot(time, h_t, 'b', 'LineWidth', 1.5);
title('Composite Signal of 50 Hz, 350 Hz and 400 Hz');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, max(time)]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(2, 1, 2);
plot(frequency, abs(H_omega), 'b', 'LineWidth', 1.5);
title('Frequency Spectrum of Composite Signal');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 500]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig2.jpg', '-djpeg', '-r600');
%% 加噪处理
noise = 3 * randn(size(h_t));
% 高斯白噪声，幅度为 3
noisy_h_t = h_t + noise;
% 加噪后的信号
noisy_H_omega = fftshift(fft(noisy_h_t));
% 加噪信号傅里叶变换
%% 图 3：加噪信号时域波形与幅频特性
figure;
subplot(2, 1, 1);
plot(time, noisy_h_t, 'b', 'LineWidth', 1.5);
title('Noisy Signal in Time Domain');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, max(time)]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(2, 1, 2);
plot(frequency, abs(noisy_H_omega), 'b', 'LineWidth', 1.5);
title('Frequency Spectrum of Noisy Signal');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 500]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig3.jpg', '-djpeg', '-r600');
%% 汉宁窗带通滤波器分离三个频率分量
% 滤出 50 Hz 信号
[freq_axis, mag_r_1_hann, phase_r_1_hann, f_signal_1_hann] = hannBandPassFilter(25, 75, sampling_rate, h_t);
% 滤出 350 Hz 信号
[~, mag_r_2_hann, phase_r_2_hann, f_signal_2_hann] = hannBandPassFilter(325, 375, sampling_rate, h_t);
% 滤出 400 Hz 信号
[~, mag_r_3_hann, phase_r_3_hann, f_signal_3_hann] = hannBandPassFilter(375, 425, sampling_rate, h_t);
%% 图 4：汉宁窗滤波 — 幅频与相频响应
figure;
subplot(3, 2, 1);
plot(freq_axis, 20 * log10(mag_r_1_hann), 'b', 'LineWidth', 1.5);
title('50 Hz Magnitude Response (Hann)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude (dB)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 2, 2);
plot(freq_axis, phase_r_1_hann, 'b', 'LineWidth', 1.5);
title('50 Hz Phase Response (Hann)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Phase (rad)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 2, 3);
plot(freq_axis, 20 * log10(mag_r_2_hann), 'b', 'LineWidth', 1.5);
title('350 Hz Magnitude Response (Hann)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude (dB)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 2, 4);
plot(freq_axis, phase_r_2_hann, 'b', 'LineWidth', 1.5);
title('350 Hz Phase Response (Hann)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Phase (rad)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 2, 5);
plot(freq_axis, 20 * log10(mag_r_3_hann), 'b', 'LineWidth', 1.5);
title('400 Hz Magnitude Response (Hann)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude (dB)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 2, 6);
plot(freq_axis, phase_r_3_hann, 'b', 'LineWidth', 1.5);
title('400 Hz Phase Response (Hann)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Phase (rad)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig4.jpg', '-djpeg', '-r600');
%% 图 5：汉宁窗滤波 — 分离后的时域波形
figure;
subplot(3, 1, 1);
plot(time, f_signal_1_hann, 'b', 'LineWidth', 1.5);
title('Filtered 50 Hz Signal (Hann)');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, max(time)]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 1, 2);
plot(time, f_signal_2_hann, 'b', 'LineWidth', 1.5);
title('Filtered 350 Hz Signal (Hann)');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, max(time)]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 1, 3);
plot(time, f_signal_3_hann, 'b', 'LineWidth', 1.5);
title('Filtered 400 Hz Signal (Hann)');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, max(time)]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig5.jpg', '-djpeg', '-r600');
%% 矩形窗带通滤波器分离三个频率分量
% 滤出 50 Hz 信号
[freq_axis, mag_r_1_rect, phase_r_1_rect, f_signal_1_rect] = rectwinBandPassFilter(25, 75, sampling_rate, h_t);
% 滤出 350 Hz 信号
[~, mag_r_2_rect, phase_r_2_rect, f_signal_2_rect] = rectwinBandPassFilter(325, 375, sampling_rate, h_t);
% 滤出 400 Hz 信号
[~, mag_r_3_rect, phase_r_3_rect, f_signal_3_rect] = rectwinBandPassFilter(375, 425, sampling_rate, h_t);
%% 图 6：矩形窗滤波 — 幅频与相频响应
figure;
subplot(3, 2, 1);
plot(freq_axis, 20 * log10(mag_r_1_rect), 'b', 'LineWidth', 1.5);
title('50 Hz Magnitude Response (Rectwin)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude (dB)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 2, 2);
plot(freq_axis, phase_r_1_rect, 'b', 'LineWidth', 1.5);
title('50 Hz Phase Response (Rectwin)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Phase (rad)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 2, 3);
plot(freq_axis, 20 * log10(mag_r_2_rect), 'b', 'LineWidth', 1.5);
title('350 Hz Magnitude Response (Rectwin)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude (dB)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 2, 4);
plot(freq_axis, phase_r_2_rect, 'b', 'LineWidth', 1.5);
title('350 Hz Phase Response (Rectwin)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Phase (rad)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 2, 5);
plot(freq_axis, 20 * log10(mag_r_3_rect), 'b', 'LineWidth', 1.5);
title('400 Hz Magnitude Response (Rectwin)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude (dB)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 2, 6);
plot(freq_axis, phase_r_3_rect, 'b', 'LineWidth', 1.5);
title('400 Hz Phase Response (Rectwin)');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Phase (rad)', 'FontName', 'Times New Roman', 'FontSize', 10);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig6.jpg', '-djpeg', '-r600');
%% 图 7：矩形窗滤波 — 分离后的时域波形
figure;
subplot(3, 1, 1);
plot(time, f_signal_1_rect, 'b', 'LineWidth', 1.5);
title('Filtered 50 Hz Signal (Rectwin)');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, max(time)]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 1, 2);
plot(time, f_signal_2_rect, 'b', 'LineWidth', 1.5);
title('Filtered 350 Hz Signal (Rectwin)');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, max(time)]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
subplot(3, 1, 3);
plot(time, f_signal_3_rect, 'b', 'LineWidth', 1.5);
title('Filtered 400 Hz Signal (Rectwin)');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, max(time)]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig7.jpg', '-djpeg', '-r600');
disp('所有滤波器处理完成');
