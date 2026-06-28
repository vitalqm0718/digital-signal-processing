%% 等波纹最佳逼近法设计 FIR 滤波器处理音阶音频 - 主仿真脚本
clc; clear; close all;
%% 生成 Do Re Mi Fa Sol La Si 音阶音频
[music, fs] = generateScaleAudio();
%% 图 1：原始音频时域波形
tt = 0:1/fs:(length(music)-1)/fs;
figure;
subplot(2,1,1);
plot(tt, music, 'b', 'LineWidth', 0.5);
title('Time Domain of Do Re Mi Fa Sol La Si');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, max(tt)]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
%% 图 2：原始音频频域频谱
nfft = 2^nextpow2(length(music));
frequency = fs/2 * linspace(0, 1, nfft/2+1);
fft_result = abs(fft(music, nfft));
fft_result = fft_result(1:nfft/2+1);
subplot(2,1,2);
plot(frequency, 20*log10(fft_result), 'b', 'LineWidth', 0.5);
title('Frequency Spectrum of Do Re Mi Fa Sol La Si');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude (dB)', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([250, 500]); ylim([0, 60]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig2.jpg', '-djpeg', '-r600');
%% 低通滤波器处理（图 3, 4, 5）
disp('====== 低通滤波器 ======');
filtered_lp = equirippleLowPass(music, fs);
%% 高通滤波器处理（图 6, 7, 8）
disp('====== 高通滤波器 ======');
filtered_hp = equirippleHighPass(music, fs);
%% 带通滤波器处理（图 9, 10, 11）
disp('====== 带通滤波器 ======');
filtered_bp = equirippleBandPass(music, fs);
%% 带阻滤波器处理（图 12, 13, 14）
disp('====== 带阻滤波器 ======');
filtered_br = equirippleBandReject(music, fs);
disp('所有滤波器处理完成');
