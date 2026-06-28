# 连续系统时域、频域与 S 域分析 / Continuous System Time, Frequency, and S-Domain Analysis

## 1. 原理概述 / Principle

线性时不变（LTI）连续系统的分析可以通过时域、频域和复频域（S 域）三种角度进行。时域分析直接求解系统的微分方程，得到零输入响应、零状态响应、冲激响应和阶跃响应等时域特性；频域分析通过傅里叶变换研究系统对不同频率正弦输入的响应特性，包括幅频特性和相频特性；S 域分析通过拉普拉斯变换将微分方程转化为代数方程，利用系统函数的零极点分布判断系统的稳定性与频率选择性。

本项目对三个不同的二阶连续系统分别进行时域、频域和 S 域分析：
- **时域分析系统**: $H(s) = \dfrac{s+3}{s^2+3s+2}$，初始条件 $r(0)=1, r'(0)=0$，激励 $e(t)=e^{-3t}$
- **频域分析系统**: $H(s) = \dfrac{2}{s^2+3s+2}$
- **S 域分析系统**: $H(s) = \dfrac{s}{s^2+2s+2}$

Linear time-invariant (LTI) continuous systems can be analyzed from three perspectives: time domain, frequency domain, and complex frequency domain (S-domain). Time-domain analysis directly solves the system differential equation to obtain zero-input, zero-state, impulse, and step responses. Frequency-domain analysis uses the Fourier transform to study the system's steady-state sinusoidal response, including magnitude and phase characteristics. S-domain analysis uses the Laplace transform to convert differential equations into algebraic equations and evaluates system stability through pole-zero analysis.

### 核心公式 / Core Equations

**传递函数 / Transfer Function:**

$$
H(s) = \frac{Y(s)}{E(s)} = \frac{b_m s^m + b_{m-1}s^{m-1} + \cdots + b_0}{a_n s^n + a_{n-1}s^{n-1} + \cdots + a_0}
$$

**完全响应 / Complete Response:**

$$
r(t) = r_{ZI}(t) + r_{ZS}(t)
$$

其中 $r_{ZI}(t)$ 为零输入响应（仅由初始状态引起），$r_{ZS}(t)$ 为零状态响应（仅由外部激励引起）。

where $r_{ZI}(t)$ is the zero-input response (due only to initial conditions) and $r_{ZS}(t)$ is the zero-state response (due only to the external excitation).

**频率响应 / Frequency Response:**

$$
H(j\omega) = |H(j\omega)| e^{j\phi(\omega)}
$$

其中 $|H(j\omega)|$ 为幅频响应，$\phi(\omega)$ 为相频响应。

where $|H(j\omega)|$ is the magnitude response and $\phi(\omega)$ is the phase response.

---

## 2. 关键参数 / Key Parameters

| 参数 / Parameter | 时域 / Time | 频域 / Freq | S 域 / S-Domain |
|------|------|------|------|
| 传递函数 $H(s)$ | $\dfrac{s+3}{s^2+3s+2}$ | $\dfrac{2}{s^2+3s+2}$ | $\dfrac{s}{s^2+2s+2}$ |
| 系统极点 | $-1, -2$ | $-1, -2$ | $-1 \pm j$ |
| 系统零点 | $-3$ | 无 | $0$ |
| 时间范围 | $0$–$5$ s | $0$–$5$ s | $0$–$5$ s |
| 频率范围 | — | $-10$–$10$ rad/s | $0$–$15$ rad/s |
| 初始条件 | $r(0)=1,\ r'(0)=0$ | 零状态 | 零状态 |
| 激励信号 | $e^{-3t}$ | — | — |

## 3. 仿真结果 / Simulation Results

### 3.1 时域分析 / Time Domain Analysis

> 系统 $H(s) = (s+3)/(s^2+3s+2)$，初始条件 $r(0)=1, r'(0)=0$，激励信号 $e(t) = e^{-3t}$

![fig1](fig1.jpg)  ![fig2](fig2.jpg)
![fig3](fig3.jpg)  ![fig4](fig4.jpg)
![fig5](fig5.jpg)  ![fig6](fig6.jpg)

### 3.2 频域分析 / Frequency Domain Analysis

> 系统 $H(s) = 2/(s^2+3s+2)$，分析冲激/阶跃响应及频率响应特性

![fig7](fig7.jpg)  ![fig8](fig8.jpg)
![fig9](fig9.jpg)  ![fig10](fig10.jpg)

### 3.3 S 域分析 / S-Domain Analysis

> 系统 $H(s) = s/(s^2+2s+2)$，分析冲激/阶跃响应、零极点分布及频率响应特性

![fig11](fig11.jpg)  ![fig12](fig12.jpg)
![fig13](fig13.jpg)  ![fig14](fig14.jpg)
![fig15](fig15.jpg)

---

*更多算法请返回 [F:\GitHub](../../README.md).*
