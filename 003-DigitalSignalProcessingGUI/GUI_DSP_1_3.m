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

% Last Modified by GUIDE v2.5 14-Mar-2024 11:08:23

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
