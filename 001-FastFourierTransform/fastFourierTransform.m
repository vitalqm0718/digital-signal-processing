%% 快速傅里叶变换，返回单边幅度谱与频率轴
function [freqAxis, magnitudeSpectrum] = fastFourierTransform(time, signal)
% 输入:
%   time   - 时间向量 (s)，均匀采样
%   signal - 输入信号向量，长度与 time 相同
% 输出:
%   freqAxis          - 频率轴 (Hz)，范围 [0, fs/2]
%   magnitudeSpectrum - 单边幅度谱
%% 参数检查
if length(time) ~= length(signal)
    error('time 与 signal 的长度必须相同。');
end
numSamples = length(signal);
%% 采样频率
sampleInterval = time(2) - time(1);
samplingFrequency = 1 / sampleInterval;
%% FFT 计算
signalFFT = fft(signal);                                    % 复数频谱
magnitude = abs(signalFFT / numSamples);                    % 幅度谱归一化
magnitude = magnitude(1 : floor(numSamples / 2) + 1);       % 取单边 (0 ~ fs/2)
magnitude(2:end-1) = 2 * magnitude(2:end-1);                % 单边幅度加倍（直流除外）
%% 频率轴
freqAxis = samplingFrequency * (0 : floor(numSamples / 2)) / numSamples;
%% 输出
magnitudeSpectrum = magnitude;
end
