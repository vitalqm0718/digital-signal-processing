# 数字信号处理 GUI / Digital Signal Processing GUI

## 1. 项目概述 / Overview

本项目是一个基于 MATLAB 的综合数字信号处理（DSP）GUI 系统。集成了信号生成、图像滤波、数字滤波器设计、图像去雾和音频处理等六大功能模块，覆盖了时域分析、频域分析、空域滤波等多个信号处理领域。

This project is a comprehensive MATLAB-based Digital Signal Processing (DSP) GUI system. It integrates six major functional modules including signal generation, image filtering, digital filter design, image dehazing, and audio processing, covering time-domain analysis, frequency-domain analysis, and spatial filtering.

## 2. 文件结构 / File Structure

| 文件 / File | 说明 / Description |
|------|------|
| `GUI_DSP.m` / `.fig` | 主菜单 GUI / Main menu GUI |
| `GUI_DSP_1.m` / `.fig` | 二级菜单，选择功能模块 / Sub-menu for module selection |
| `GUI_DSP_1_1.m` / `.fig` | 信号生成 GUI（正弦/余弦/正切/余切/指数/阶跃）/ Signal generation GUI |
| `GUI_DSP_1_2.m` / `.fig` | 盒式滤波 GUI（图像均值滤波）/ Box (mean) filter GUI |
| `GUI_DSP_1_3.m` / `.fig` | 高斯滤波 GUI（图像高斯平滑）/ Gaussian filter GUI |
| `GUI_DSP_1_4.m` / `.fig` | FIR/IIR 数字滤波器设计 GUI / FIR/IIR digital filter design GUI |
| `GUI_DSP_1_4_1.m` / `.fig` | 图像去雾 GUI（暗通道先验 + 导向滤波）/ Image dehazing GUI |
| `GUI_DSP_1_4_2.m` / `.fig` | 音频/信号处理 GUI / Audio and signal processing GUI |
| `boxfilter.m` | O(1) 盒式滤波器子函数 / O(1) box filter helper |
| `guidedfilter.m` | 导向滤波子函数 / Guided filter helper |
| `chirp.mat` | 线性调频测试信号 / Chirp test signal |
| `PNG_1.jpg` | 测试图像 / Test image |

## 3. 各功能模块说明 / Modules and Algorithms

### 3.1 信号生成 / Signal Generation

通过单选按钮选择波形类型，设置幅度、频率和相位参数，实时生成并显示六种基本信号：

Six basic signal types selectable via radio buttons with adjustable amplitude, frequency, and phase:

- 正弦波 / Sine wave: $A \cdot \sin(\omega t + \varphi)$
- 余弦波 / Cosine wave: $A \cdot \cos(\omega t + \varphi)$
- 正切波 / Tangent wave: $A \cdot \tan(\omega t + \varphi)$
- 余切波 / Cotangent wave: $A \cdot \cot(\omega t + \varphi)$
- 指数信号 / Exponential: $A \cdot e^{\omega t + \varphi}$
- 阶跃信号 / Heaviside step: $A \cdot u(t + \varphi)$

### 3.2 盒式滤波 / Box Filter (Mean Filter)

对图像进行均值滤波，基于 O(1) 积分图算法实现任意窗口半径的快速均值滤波，计算复杂度与窗口大小无关。

Implements mean filtering on images using an O(1) integral image algorithm, enabling fast filtering with arbitrary window radius independent of window size.

**关键参数 / Key Parameters:** 窗口半径 $r$

### 3.3 高斯滤波 / Gaussian Filter

对图像进行高斯平滑滤波。通过一维高斯核与图像卷积实现，标准差 $\sigma$ 控制平滑程度。

Applies Gaussian smoothing to images using 1D Gaussian kernel convolution. The standard deviation $\sigma$ controls the smoothing strength.

**关键参数 / Key Parameters:** 高斯核标准差 $\sigma$

### 3.4 FIR/IIR 数字滤波器设计 / FIR/IIR Digital Filter Design

同时设计 FIR（窗函数法）和 IIR（Butterworth）数字低通滤波器，并在同一界面中显示各自的频率响应曲线。

Designs both FIR (window method) and IIR (Butterworth) digital low-pass filters, displaying their frequency responses simultaneously in the same GUI.

**关键参数 / Key Parameters:** 滤波器阶数 $N$，截止频率 $f_c$

### 3.5 图像去雾 / Image Dehazing

基于暗通道先验（Dark Channel Prior）和导向滤波的图像去雾算法。先估计暗通道和大气亮度，再通过导向滤波细化透射率图，最终恢复无雾图像。

Implements image dehazing based on the Dark Channel Prior algorithm with guided filter refinement. Estimates the dark channel and atmospheric light, refines the transmission map via guided filtering, and recovers the haze-free image.

**关键参数 / Key Parameters:** 去雾系数 $w_0 = 0.95$，导向滤波半径 $r = 50$，正则化 $\varepsilon = 10^{-3}$

### 3.6 音频/信号处理 / Audio and Signal Processing

对 chirp 测试信号进行数字滤波处理，展示滤波前后的时域波形对比。系统集成了完整的滤波链：信号加载、滤波器设计、滤波处理、结果显示。

Applies digital filtering to the chirp test signal, displaying time-domain waveforms before and after filtering. The system integrates a complete filtering chain: signal loading, filter design, filtering, and result display.

## 4. 使用流程 / Usage Flow

```
GUI_DSP（主菜单）
  └── GUI_DSP_1（功能选择菜单）
        ├── 按钮 1 → GUI_DSP_1_1（信号生成：正弦/余弦/正切/余切/指数/阶跃）
        ├── 按钮 2 → GUI_DSP_1_2（盒式滤波：图像均值滤波）
        ├── 按钮 3 → GUI_DSP_1_3（高斯滤波：图像高斯平滑）
        ├── 按钮 4 → GUI_DSP_1_4（FIR/IIR 数字滤波器设计）
        │     ├── 按钮 5 → GUI_DSP_1_4_1（图像去雾：暗通道先验）
        │     └── 按钮 6 → GUI_DSP_1_4_2（音频/信号处理）
        └── 按钮 5 → 返回主菜单 GUI_DSP
```

---

*更多项目请返回 [F:\GitHub](../../README.md).*
