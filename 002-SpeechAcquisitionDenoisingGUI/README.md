# 语音采集去噪 GUI / Speech Acquisition and Denoising GUI

## 1. 项目概述 / Overview

本项目是一个基于 MATLAB 的语音信号采集与去噪 GUI 系统。用户可通过图形界面录制语音、添加噪声，并选择多种滤波算法进行去噪处理。系统集成了主菜单与多个子界面，分别实现不同的去噪功能。

This project is a MATLAB-based GUI system for speech signal acquisition and denoising. Users can record speech via the graphical interface, add noise, and select various filtering algorithms for denoising. The system includes a main menu and multiple sub-interfaces implementing different denoising functions.

## 2. 文件结构 / File Structure

| 文件 / File | 说明 / Description |
|------|------|
| `GUI_DSP.m` / `.fig` | 主菜单 GUI，提供去噪模式选择入口 / Main menu GUI with mode selection buttons |
| `GUI_DSP_1.m` / `.fig` | 二级菜单 GUI，选择具体去噪算法 / Sub-menu GUI for selecting denoising algorithms |
| `GUI_DSP_1_1.m` / `.fig` | 自适应滤波去噪 GUI / Adaptive filter denoising GUI |
| `GUI_DSP_1_2.m` / `.fig` | 高斯滤波去噪 GUI / Gaussian filter denoising GUI |
| `GUI_DSP_1_3.m` / `.fig` | 低通滤波去噪 GUI / Low-pass filter denoising GUI |
| `adaptive_filter.m` | RLS 自适应滤波器子函数 / RLS adaptive filter function |
| `gaussian_filter.m` | 高斯滤波器子函数 / Gaussian filter function |
| `low_pass_filtering.m` | Butterworth 低通滤波器子函数 / Butterworth low-pass filter function |

## 3. 去噪算法 / Denoising Algorithms

### 3.1 RLS 自适应滤波 / RLS Adaptive Filter

利用递归最小二乘（RLS）算法，以参考噪声为输入、含噪信号为期望响应，自适应地估计噪声分量并从含噪信号中减去，实现去噪。

Uses the Recursive Least Squares (RLS) algorithm with a reference noise input and noisy signal as the desired response to adaptively estimate and cancel the noise component.

**关键参数 / Key Parameters:** 滤波器阶数 $M$，遗忘因子 $\lambda = 0.99$

### 3.2 高斯滤波 / Gaussian Filter

对信号与一维高斯核进行卷积，利用高斯核的平滑特性抑制高频噪声。

Convolves the signal with a 1D Gaussian kernel to suppress high-frequency noise through smoothing.

**关键参数 / Key Parameters:** 高斯核标准差 $\sigma$，滤波器尺寸 $2 \lceil 3\sigma \rceil + 1$

### 3.3 低通滤波 / Low-Pass Filter (Butterworth)

设计 Butterworth 低通滤波器，保留截止频率以下的语音信号分量，衰减高频噪声。

Designs a Butterworth low-pass filter to retain speech components below the cutoff frequency while attenuating high-frequency noise.

**关键参数 / Key Parameters:** 阶数 $N$，截止频率 $f_c$，采样率 $f_s$

---

## 4. 使用流程 / Usage Flow

```
GUI_DSP (主菜单)
  ├── 按钮 → GUI_DSP_1 (选择去噪算法)
  │     ├── 按钮 1 → GUI_DSP_1_1 (自适应滤波去噪)
  │     ├── 按钮 2 → GUI_DSP_1_2 (高斯滤波去噪)
  │     ├── 按钮 3 → GUI_DSP_1_3 (低通滤波去噪)
  │     ├── 按钮 4 → (预留)
  │     └── 按钮 5 → 返回主菜单
  └── 退出按钮
```
