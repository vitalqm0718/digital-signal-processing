%% 等波纹最佳逼近法设计 FIR 低通滤波器并滤波
function filtered_signal = equirippleLowPass(music, fs)
% 输入:
%   music - 原始音频信号，行向量
%   fs    - 采样频率，标量
% 输出:
%   filtered_signal - 低通滤波后的音频信号
%% 低通滤波器参数设置
Passband_cutoff_frequency = 335;
% 通带截止频率（Hz）
Resistance_Band_Cutoff_Frequency = 340;
% 阻带截止频率（Hz）
Maximum_passband_attenuation = 1;
% 通带最大衰减量（dB）
Minimum_attenuation = 60;
% 阻带最小衰减量（dB）
Sampling_frequency = fs;
% 采样频率
Vector_of_cutoff_frequency = [Passband_cutoff_frequency, Resistance_Band_Cutoff_Frequency];
% 通带和阻带截止频率向量
ideal_response = [1, 0];
% 理想响应：通带增益为1，阻带增益为0
%% 滤波器设计
Maximum_error = [(10^(Maximum_passband_attenuation/20)-1)/(10^(Maximum_passband_attenuation/20)+1), 10^(-Minimum_attenuation/20)];
% 通带和阻带的最大误差向量
[Ne, fo, mo, W] = remezord(Vector_of_cutoff_frequency, ideal_response, Maximum_error, Sampling_frequency);
% 使用 remezord 计算滤波器阶数和频率向量
Ne = Ne + 1;
% 增加滤波器阶数以改善过渡带
Optimal_impulse_response = remez(Ne, fo, mo, W);
% 使用 remez（Parks-McClellan）算法生成最优冲激响应
Filter_Objects = dfilt.dffir(Optimal_impulse_response);
% 创建 FIR 滤波器对象
[H, W] = freqz(Filter_Objects);
% 计算滤波器频率响应
freq_magnitude = abs(H);
% 幅度响应
norm_freq = W ./ pi;
% 归一化频率轴
dB_response = 20 * log10(freq_magnitude ./ max(freq_magnitude));
% 幅度响应（dB）
%% 图 3：低通滤波器频率响应
figure;subplot(3,1,1);
plot(norm_freq, dB_response, 'b', 'LineWidth', 0.5);
title('Frequency Response of Low-Pass Filter');
xlabel('Normalized Frequency (\omega/\pi)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude (dB)', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 1]); ylim([-80, 0]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
%% 对音频信号进行低通滤波
filtered_signal = filter(Filter_Objects.Numerator, 1, music);
%% 图 4：低通滤波后时域波形
tt = 0:1/fs:(length(filtered_signal)-1)/fs;
subplot(3,1,2);
plot(tt, filtered_signal, 'b', 'LineWidth', 0.5);
title('Time Domain of Low-Pass Filtered Signal');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, max(tt)]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
%% 图 5：低通滤波后频域频谱
nfft = 2^nextpow2(length(filtered_signal));
frequency = fs/2 * linspace(0, 1, nfft/2+1);
fft_result = abs(fft(filtered_signal, nfft));
fft_result = fft_result(1:nfft/2+1);
subplot(3,1,3);
plot(frequency, 20*log10(fft_result), 'b', 'LineWidth', 0.5);
title('Frequency Spectrum of Low-Pass Filtered Signal');
xlabel('Frequency (Hz)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude (dB)', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([250, 500]); ylim([0, 60]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig3.jpg', '-djpeg', '-r600');
end
