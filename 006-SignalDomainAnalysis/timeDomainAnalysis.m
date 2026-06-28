%% 连续系统时域分析
function figEnd = timeDomainAnalysis(figStart)
% 输入:
%   figStart - 起始图号，标量
% 输出:
%   figEnd   - 结束图号 + 1，标量
% 系统方程: r''(t) + 3r'(t) + 2r(t) = e'(t) + 3e(t)
% 传递函数: H(s) = (s + 3) / (s^2 + 3s + 2)
% 激励信号: e(t) = exp(-3t)
% 初始状态: r(0) = 1, r'(0) = 0
%% 定义系统传递函数
a = [1, 3, 2];
% 分母系数: s^2 + 3s + 2
b = [1, 3];
% 分子系数: s + 3
sys = tf(b, a);
% 传递函数
%% 定义时间轴
t = 0:0.01:5;
% 时间范围 0~5 s，步长 0.01 s
%% 零输入响应
x0 = [1; 0];
% 初始状态
[A, B, C, D] = tf2ss(b, a);
% 传递函数转状态空间
[y_ZI, ~, ~] = initial(ss(A, B, C, D), x0, t);
% 零输入响应
%% 图 X：零输入响应
figure;
plot(t, y_ZI, 'b', 'LineWidth', 0.5);
title('Zero-Input Response');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 5]); ylim([0, 1]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', figStart), '-djpeg', '-r600');
fig = figStart + 1;
%% 零状态响应
e = exp(-3 * t);
% 激励信号
y_ZS = lsim(sys, e, t);
% 零状态响应
%% 图 X：零状态响应
figure;
plot(t, y_ZS, 'b', 'LineWidth', 0.5);
title('Zero-State Response');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 5]); ylim([0, 0.25]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', fig), '-djpeg', '-r600');
fig = fig + 1;
%% 完全响应
y_complete = y_ZI + y_ZS;
%% 图 X：完全响应
figure;
plot(t, y_complete, 'b', 'LineWidth', 0.5);
title('Complete Response');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 5]); ylim([0, 1.2]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', fig), '-djpeg', '-r600');
fig = fig + 1;
%% 冲激响应
h = impulse(sys, t);
%% 图 X：冲激响应
figure;
plot(t, h, 'b', 'LineWidth', 0.5);
title('Impulse Response');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 5]); ylim([0, 1]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', fig), '-djpeg', '-r600');
fig = fig + 1;
%% 阶跃响应
y_step = step(sys, t);
%% 图 X：阶跃响应
figure;
plot(t, y_step, 'b', 'LineWidth', 0.5);
title('Step Response');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 5]); ylim([0, 1.5]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', fig), '-djpeg', '-r600');
fig = fig + 1;
%% 激励信号时域波形
%% 图 X：激励信号时域波形
figure;
plot(t, e, 'b', 'LineWidth', 0.5);
title('Excitation Signal e(t) = e^{-3t}');
xlabel('Time (s)', 'FontName', 'Times New Roman', 'FontSize', 10);
ylabel('Amplitude', 'FontName', 'Times New Roman', 'FontSize', 10);
xlim([0, 5]); ylim([0, 1]);
grid on; set(gca, 'box', 'on');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 10); set(gca, 'LineWidth', 1);
set(gcf, 'Renderer', 'OpenGL');
print(gcf, sprintf('fig%d.jpg', fig), '-djpeg', '-r600');
figEnd = fig + 1;
end
