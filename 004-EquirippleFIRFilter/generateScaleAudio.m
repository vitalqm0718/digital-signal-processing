%% 生成 Do Re Mi Fa Sol La Si 音阶音频信号
function [music, fs] = generateScaleAudio()
% 输入: 无
% 输出:
%   music - 七个音符拼接后的音频信号，行向量
%   fs    - 采样频率，1000 Hz
%% 参数设置
fs = 2000;
% 采样率，选择1000 Hz以观察清晰的时域细节
duration = 0.1;
% 每个音符的持续时间（秒）
frequencies = [261.63, 293.66, 329.63, 349.23, 392.00, 440.00, 493.88];
% 音符频率（C4, D4, E4, F4, G4, A4, B4）
%% 生成各音符信号
t = 0:1/fs:duration;
do_signal = sin(2*pi*frequencies(1)*t);
re_signal = sin(2*pi*frequencies(2)*t);
mi_signal = sin(2*pi*frequencies(3)*t);
fa_signal = sin(2*pi*frequencies(4)*t);
sol_signal = sin(2*pi*frequencies(5)*t);
la_signal = sin(2*pi*frequencies(6)*t);
si_signal = sin(2*pi*frequencies(7)*t);
noteNames = {'Do', 'Re', 'Mi', 'Fa', 'Sol', 'La', 'Si'};
signals = {do_signal, re_signal, mi_signal, fa_signal, sol_signal, la_signal, si_signal};
%% 图 1：各音符时域波形
figure('Name', 'ScaleNotes');
for i = 1:7
    subplot(4, 2, i);
    plot(t, signals{i}, 'b', 'LineWidth', 0.5);
    xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
    ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
    title(noteNames{i}, 'FontName', 'Times New Roman', 'FontSize', 10);
    xlim([0, max(t)]);
    grid on; set(gca, 'box', 'on');
    set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
end
sgtitle('Time Domain of Individual Notes', 'FontName', 'Times New Roman', 'FontSize', 11);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, 'fig1.jpg', '-djpeg', '-r600');
%% 合并音符信号并保存
music = [do_signal, re_signal, mi_signal, fa_signal, sol_signal, la_signal, si_signal];
end
