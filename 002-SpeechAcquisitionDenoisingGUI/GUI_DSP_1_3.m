function varargout = GUI_DSP_1_3(varargin)
% GUI_DSP_1_3 MATLAB code for GUI_DSP_1_3.fig
%      GUI_DSP_1_3, by itself, creates a new GUI_DSP_1_3 or raises the existing
%      singleton*.
%
%      H = GUI_DSP_1_3 returns the handle to a new GUI_DSP_1_3 or the handle to
%      the existing singleton*.
%
%      GUI_DSP_1_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DSP_1_3.M with the given input arguments.
%
%      GUI_DSP_1_3('Property','Value',...) creates a new GUI_DSP_1_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_DSP_1_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_DSP_1_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_DSP_1_3

% Last Modified by GUIDE v2.5 16-Apr-2024 16:50:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_DSP_1_3_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_DSP_1_3_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI_DSP_1_3 is made visible.
function GUI_DSP_1_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_DSP_1_3 (see VARARGIN)

% Choose default command line output for GUI_DSP_1_3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_DSP_1_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_DSP_1_3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t1;
global waveform1;
N = str2double(get(handles.edit4, 'String'));
L = length(waveform1);
fs = 1 / (t1(2) - t1(1));
frequency = (0:N-1) * fs / N;
dft = zeros(1, N);
for k = 1:N
    for n = 1:L
        dft(k) = dft(k) + waveform1(n) * exp(-1i * 2 * pi * (k-1) * (n-1) / L);
    end
end
plot(handles.axes2,frequency,abs(dft),'LineWidth',2);
xlabel('频率');ylabel('幅度');
xlim(handles.axes2, [0, (N-1)*fs/N]);

guidata(hObject,handles);


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t1;
global waveform1;
N = str2double(get(handles.edit4, 'String'));
fs = 1 / (t1(2) - t1(1));
frequency = (0:N-1) * fs / N;

fft_result = fft(waveform1, N);
plot(handles.axes2,frequency,abs(fftshift(fft_result)),'LineWidth',2);
xlabel('频率');ylabel('幅度');
xlim(handles.axes2, [(N-1)*fs/N/2, (N-1)*fs/N]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    disp('按钮被点击了');
    oldFig = gcf;
    set(GUI_DSP_1,'Visible','on');
    close(oldFig);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t1;
global waveform1;
    % 获取单选按钮的选中状态
    radioButton1Value = get(handles.radiobutton1, 'Value');
    radioButton2Value = get(handles.radiobutton2, 'Value');
    radioButton3Value = get(handles.radiobutton3, 'Value');
    radioButton4Value = get(handles.radiobutton4, 'Value');
    radioButton5Value = get(handles.radiobutton5, 'Value');
    radioButton6Value = get(handles.radiobutton6, 'Value');
    % 获取输入文本框的值
    amplitude = str2double(get(handles.edit1, 'String'));
    frequency = str2double(get(handles.edit2, 'String'));
    phase = str2double(get(handles.edit3, 'String'));
    % 时域
    t1 = -pi/2:pi/1280:pi/2;
    % 根据选中的单选按钮和输入的值生成波形数据
    if radioButton1Value
        waveform1 = amplitude .* sin(frequency .* t1 + phase);
        plot(handles.axes1,t1,waveform1,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    elseif radioButton2Value
        waveform1 = amplitude .* cos(frequency .* t1 + phase);
        plot(handles.axes1,t1,waveform1,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    elseif radioButton3Value
        waveform1 = amplitude .* tan(frequency .* t1 + phase);
        plot(handles.axes1,t1,waveform1,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    elseif radioButton4Value
        waveform1 = amplitude .* cot(frequency .* t1 + phase);
        plot(handles.axes1,t1,waveform1,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    elseif radioButton5Value
        waveform1 = amplitude .* exp(frequency .* t1 + phase);
        plot(handles.axes1,t1,waveform1,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    elseif radioButton6Value
        waveform1 = amplitude .* heaviside(t1 + phase);
        plot(handles.axes1,t1,waveform1,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    end
xlim(handles.axes1, [-pi/2, pi/2]);
ylim(handles.axes1, [-10, 10]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 读取MAT文件
data = load('voice_signal.mat');
% 获取语音数据和采样率
y = data.y;
fs = data.fs;
sample_rate = fs;
voice_signal = y;
%% 加噪声
signal_length = length(voice_signal);
% 获取语音信号的长度
time = (0:signal_length-1)./sample_rate;
noise_variance = 0.02;
% 设置噪声方差
noise_0 = sqrt(noise_variance)*randn(signal_length, 1);
% 生成均值为 0 
% 方差为 noise_variance 的高斯噪声信号 noise_0 
noise_0_filter = fir1(3,0.5);
% 创建一个 3 阶FIR滤波器
% 截止频率为 0.5
noise_1 = filter(noise_0_filter,1,noise_0);
% 将噪声信号 noise_0 通过滤波器 noise_0_filter 进行滤波
% 得到有色噪声 noise_1
signal_with_noise = voice_signal + noise_1;
% 将语音信号 voice_signal 和噪声信号 noise_1 相加
% 得到带噪声信号 signal_with_noise
%% RLS自适应滤波
M = 32;
% 自适应滤波器的阶数
[filtered_signal1] = ...
    adaptive_filter(noise_0, signal_with_noise, M);
save('filtered_signal1.mat', 'filtered_signal1', 'sample_rate');
disp('语音数据已保存');
%% 绘制滤波后的信号波形图
plot(handles.axes1,time, filtered_signal1);
% 绘制波形图
xlim(handles.axes1, [0,10]);
% 设置x轴范围
ylim(handles.axes1, [-1,1]);
% 设置y轴范围
guidata(hObject,handles);



% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 读取MAT文件
data = load('voice_signal.mat');
% 获取语音数据和采样率
y = data.y;
fs = data.fs;
sample_rate = fs;
voice_signal = y;
%% 加噪声
signal_length = length(voice_signal);
% 获取语音信号的长度
time = (0:signal_length-1)./sample_rate;
noise_variance = 0.02;
% 设置噪声方差
noise_0 = sqrt(noise_variance)*randn(signal_length, 1);
% 生成均值为 0 
% 方差为 noise_variance 的高斯噪声信号 noise_0 
noise_0_filter = fir1(3,0.5);
% 创建一个 3 阶FIR滤波器
% 截止频率为 0.5
noise_1 = filter(noise_0_filter,1,noise_0);
% 将噪声信号 noise_0 通过滤波器 noise_0_filter 进行滤波
% 得到有色噪声 noise_1
signal_with_noise = voice_signal + noise_1;
% 将语音信号 voice_signal 和噪声信号 noise_1 相加
% 得到带噪声信号 signal_with_noise
%% 低通滤波
cutoffFreq = 500;
% 截止频率，自行调整
order = 8;
% 滤波器阶数，自行调整
[filtered_signal2] = ...
    low_pass_filtering(order, cutoffFreq,...
    signal_with_noise, sample_rate);
save('filtered_signal2.mat', 'filtered_signal2', 'sample_rate');
disp('语音数据已保存');
%% 绘制滤波后的信号波形图
plot(handles.axes2,time, filtered_signal2);
% 绘制波形图
xlim(handles.axes2,[0,10]);
% 设置x轴范围
ylim(handles.axes2,[-1,1]);
% 设置y轴范围
guidata(hObject,handles);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 读取MAT文件
data = load('filtered_signal1.mat');
% 获取语音数据和采样率
filtered_signal1 = data.filtered_signal1;
sample_rate = data.sample_rate;
sound(filtered_signal1,sample_rate);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('filtered_audio_with_cosine_noise','fs','filtered_audio_with_cosine_noise');
sound(filtered_audio_with_cosine_noise,fs);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 读取MAT文件
data = load('voice_signal.mat');
% 获取语音数据和采样率
y = data.y;
fs = data.fs;
sample_rate = fs;
voice_signal = y;
%% 加噪声
signal_length = length(voice_signal);
% 获取语音信号的长度
time = (0:signal_length-1)./sample_rate;
noise_variance = 0.02;
% 设置噪声方差
noise_0 = sqrt(noise_variance)*randn(signal_length, 1);
% 生成均值为 0 
% 方差为 noise_variance 的高斯噪声信号 noise_0 
noise_0_filter = fir1(3,0.5);
% 创建一个 3 阶FIR滤波器
% 截止频率为 0.5
noise_1 = filter(noise_0_filter,1,noise_0);
% 将噪声信号 noise_0 通过滤波器 noise_0_filter 进行滤波
% 得到有色噪声 noise_1
signal_with_noise = voice_signal + noise_1;
% 将语音信号 voice_signal 和噪声信号 noise_1 相加
% 得到带噪声信号 signal_with_noise
%% 高斯滤波器
sigma = 15;
% 高斯核的标准差
filtered_signal3 = ...
    gaussian_filter(signal_with_noise, sigma);
save('filtered_signal3.mat', 'filtered_signal3', 'sample_rate');
disp('语音数据已保存');
%% 绘制滤波后的信号波形图
plot(handles.axes3,time, filtered_signal3);
% 绘制波形图
xlim(handles.axes3,[0,10]);
% 设置x轴范围
ylim(handles.axes3,[-1,1]);
% 设置y轴范围








% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 读取MAT文件
data = load('filtered_signal2.mat');
% 获取语音数据和采样率
filtered_signal2 = data.filtered_signal2;
sample_rate = data.sample_rate;
sound(filtered_signal2,sample_rate);




% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
