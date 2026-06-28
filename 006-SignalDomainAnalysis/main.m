%% 连续系统时域、频域与 S 域分析 — 主仿真脚本
clc; clear; close all;
%% 第一部分：时域分析
% 系统: H(s) = (s+3)/(s^2+3s+2), 激励: e^(-3t), 初始状态: r(0)=1, r'(0)=0
disp('===== 时域分析 =====');
figEnd = timeDomainAnalysis(1);
%% 第二部分：频域分析
% 系统: H(s) = 2/(s^2+3s+2)
disp('===== 频域分析 =====');
figEnd = freqDomainAnalysis(figEnd);
%% 第三部分：S 域分析
% 系统: H(s) = s/(s^2+2s+2)
disp('===== S 域分析 =====');
figEnd = sDomainAnalysis(figEnd);
disp('所有分析完成');
fprintf('共生成 %d 张图\n', figEnd - 1);
