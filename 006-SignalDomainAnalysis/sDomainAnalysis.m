%% 连续系统 S 域分析
function figEnd = sDomainAnalysis(figStart)
% 输入:
%   figStart - 起始图号，标量
% 输出:
%   figEnd   - 结束图号 + 1，标量
% 系统方程: r''(t) + 2r'(t) + 2r(t) = e'(t)
% 传递函数: H(s) = s / (s^2 + 2s + 2)
%% 定义系统传递函数
a = [1, 2, 2];
% 分母系数: s^2 + 2s + 2
b = [1, 0];
% 分子系数: s
%% 定义时间轴
t = 0:0.01:5;
% 时间范围 0~5 s，步长 0.01 s
%% 冲激响应
h = impulse(b, a, t);
%% 图 X：冲激响应
figure;
plot(t, h, 'b', 'LineWidth', 0.5);
title('Impulse Response');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 5]); ylim([-0.5, 1]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', figStart), '-djpeg', '-r600');
fig = figStart + 1;
%% 阶跃响应
g = step(b, a, t);
%% 图 X：阶跃响应
figure;
plot(t, g, 'b', 'LineWidth', 0.5);
title('Step Response');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 5]); ylim([-0.1, 0.4]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', fig), '-djpeg', '-r600');
fig = fig + 1;
%% 零极点分布
zs = roots(b);
% 零点
ps = roots(a);
% 极点
%% 图 X：零极点分布图
figure;
pzmap(tf(b, a));
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(findobj(gca, 'Type', 'Line', 'Marker', 'x'), 'LineWidth', 2, 'MarkerSize', 8);
set(findobj(gca, 'Type', 'Line', 'Marker', 'o'), 'LineWidth', 2, 'MarkerSize', 8);
title('Pole-Zero Map');
grid on; set(gca, 'box', 'on');
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', fig), '-djpeg', '-r600');
fig = fig + 1;
%% 频率响应
w = 0:0.01:15;
% 频率范围 0 到 15 rad/s
H = freqs(b, a, w);
% 计算频率响应
mag = abs(H);
% 幅值
phase = angle(H) * 180 / pi;
% 相位（度）
%% 图 X：幅频特性
figure;
plot(w, mag, 'b', 'LineWidth', 0.5);
title('Magnitude Response');
xlabel('Angular Frequency (rad/s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Magnitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 15]); ylim([-0.1, 0.6]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', fig), '-djpeg', '-r600');
fig = fig + 1;
%% 图 X：相频特性
figure;
plot(w, phase, 'b', 'LineWidth', 0.5);
title('Phase Response');
xlabel('Angular Frequency (rad/s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Phase (deg)', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 15]); ylim([-100, 100]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', fig), '-djpeg', '-r600');
figEnd = fig + 1;
end
