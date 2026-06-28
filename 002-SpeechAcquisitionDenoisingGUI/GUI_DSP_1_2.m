function varargout = GUI_DSP_1_2(varargin)
% GUI_DSP_1_2 MATLAB code for GUI_DSP_1_2.fig
%      GUI_DSP_1_2, by itself, creates a new GUI_DSP_1_2 or raises the existing
%      singleton*.
%
%      H = GUI_DSP_1_2 returns the handle to a new GUI_DSP_1_2 or the handle to
%      the existing singleton*.
%
%      GUI_DSP_1_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DSP_1_2.M with the given input arguments.
%
%      GUI_DSP_1_2('Property','Value',...) creates a new GUI_DSP_1_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_DSP_1_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_DSP_1_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_DSP_1_2

% Last Modified by GUIDE v2.5 16-Apr-2024 16:44:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_DSP_1_2_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_DSP_1_2_OutputFcn, ...
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


% --- Executes just before GUI_DSP_1_2 is made visible.
function GUI_DSP_1_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_DSP_1_2 (see VARARGIN)

% Choose default command line output for GUI_DSP_1_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_DSP_1_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_DSP_1_2_OutputFcn(hObject, eventdata, handles) 
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
    disp('按钮被点击了');
    oldFig = gcf;
    set(GUI_DSP_1,'Visible','on');
    close(oldFig);



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


% --- Executes on button press in pushbutton1.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
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
global waveform2;
    % 获取单选按钮的选中状态
    radioButton1Value = get(handles.radiobutton7, 'Value');
    radioButton2Value = get(handles.radiobutton8, 'Value');
    radioButton3Value = get(handles.radiobutton9, 'Value');
    radioButton4Value = get(handles.radiobutton10, 'Value');
    radioButton5Value = get(handles.radiobutton11, 'Value');
    radioButton6Value = get(handles.radiobutton12, 'Value');
    % 获取输入文本框的值
    amplitude = str2double(get(handles.edit4, 'String'));
    frequency = str2double(get(handles.edit5, 'String'));
    phase = str2double(get(handles.edit6, 'String'));
    % 时域
    t2 = -pi/2:pi/1280:pi/2;
    % 根据选中的单选按钮和输入的值生成波形数据
    if radioButton1Value
        waveform2 = amplitude .* sin(frequency .* t2 + phase);
        plot(handles.axes2,t2,waveform2,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    elseif radioButton2Value
        waveform2 = amplitude .* cos(frequency .* t2 + phase);
        plot(handles.axes2,t2,waveform2,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    elseif radioButton3Value
        waveform2 = amplitude .* tan(frequency .* t2 + phase);
        plot(handles.axes2,t2,waveform2,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    elseif radioButton4Value
        waveform2 = amplitude .* cot(frequency .* t2 + phase);
        plot(handles.axes2,t2,waveform2,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    elseif radioButton5Value
        waveform2 = amplitude .* exp(frequency .* t2 + phase);
        plot(handles.axes2,t2,waveform2,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    elseif radioButton6Value
        waveform2 = amplitude .* heaviside(t2 + phase);
        plot(handles.axes2,t2,waveform2,'LineWidth',2);
        xlabel('时间');ylabel('幅度');
    end
xlim(handles.axes2, [-pi/2, pi/2]);
ylim(handles.axes2, [-10, 10]);
guidata(hObject,handles);



% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in radiobutton11.
function radiobutton11_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton11


% --- Executes on button press in radiobutton12.
function radiobutton12_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton12



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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton7.
function radiobutton13_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton8.
function radiobutton14_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton9.
function radiobutton15_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton10.
function radiobutton16_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in radiobutton11.
function radiobutton17_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton11


% --- Executes on button press in radiobutton12.
function radiobutton18_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton12



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t1;
global waveform1;
global waveform2;
% 相加
sum_signal = waveform1 + waveform2;
plot(handles.axes3,t1,sum_signal,'LineWidth',2);
xlabel('时间');ylabel('幅度');
xlim(handles.axes3, [-pi/2, pi/2]);
ylim(handles.axes3, [-10, 10]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t1;
global waveform1;
global waveform2;
product_signal = waveform1 .* waveform2;
plot(handles.axes3,t1,product_signal,'LineWidth',2);
xlabel('时间');ylabel('幅度');
xlim(handles.axes3, [-pi/2, pi/2]);
ylim(handles.axes3, [-10, 10]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global waveform1;
global waveform2;
lags = -(length(waveform1)-1) : (length(waveform2)-1);
correlation = xcorr(waveform1, waveform2);
plot(handles.axes3,lags,correlation,'LineWidth',2);
xlabel('lags');ylabel('幅度');
xlim(handles.axes3, [-pi/2, pi/2]);
ylim(handles.axes3, [-10, 10]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global waveform1;
global t1;
flipped_signal = fliplr(waveform1);
plot(handles.axes3,t1,flipped_signal,'LineWidth',2);
xlabel('lags');ylabel('幅度');
xlim(handles.axes3, [-pi/2, pi/2]);
ylim(handles.axes3, [-10, 10]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t1;
global waveform1;
global waveform2;
conv_result = conv(waveform1, waveform2);
conv_t = linspace(2*t1(1), 2*t1(end), length(conv_result));
plot(handles.axes3,conv_t,conv_result,'LineWidth',2);
xlabel('conv_t');ylabel('幅度');
xlim(handles.axes3, [-pi/2, pi/2]);
ylim(handles.axes3, [-10, 10]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global waveform1;
global t1;
shifted_point = str2double(get(handles.edit7, 'String'));
shifted_signal = circshift(waveform1, shifted_point);
plot(handles.axes3,t1,shifted_signal,'LineWidth',2);
xlabel('lags');ylabel('幅度');
xlim(handles.axes3, [-pi/2, pi/2]);
ylim(handles.axes3, [-10, 10]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 读取MAT文件
data = load('signal_with_noise.mat');
% 获取语音数据和采样率
signal_with_noise = data.signal_with_noise;
sample_rate = data.sample_rate;
% 从文件'InitialSpeech'中加载采样率sampleRate和语音信号m4aData
audio_with_gaussian_noise = signal_with_noise;
% 将语音信号 m4aData 存储在变量 voice_signal 中
fs = sample_rate;
% 进行FFT变换
L = length(audio_with_gaussian_noise); % 信号的长度
N = 2^nextpow2(L); % 选择最接近的2的幂次作为FFT长度
Y = fft(audio_with_gaussian_noise, N)/L; % 进行FFT变换并进行归一化
% 进行频谱的移动
Y_shifted = fftshift(Y);
% 计算频率轴的值
f = (-fs/2:fs/N:fs/2-fs/N);
% 绘制频域图
plot(handles.axes8,f, abs(Y_shifted),'LineWidth',0.5);
xlabel('频率 (Hz)');
ylabel('幅度');
xlim(handles.axes8, [0, fs/2-fs/N]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 读取MAT文件
data = load('voice_signal.mat');
% 获取语音数据和采样率
y = data.y;
fs = data.fs;
sample_rate = fs;
voice_signal = y;
signal_length = length(voice_signal);
% 获取语音信号的长度
time = (0:signal_length-1)./sample_rate;
%% 加噪声
signal_length = length(voice_signal);
% 获取语音信号的长度
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
save('signal_with_noise.mat', 'signal_with_noise', 'sample_rate');
disp('语音数据已保存');
%% 绘制加噪信号波形图
plot(handles.axes7,time, signal_with_noise);
% 绘制波形图
xlim(handles.axes7, [0,10]);
% 设置x轴范围
ylim(handles.axes7, [-1,1]);
% 设置y轴范围
guidata(hObject,handles);



% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('audio_with_cosine_noise','fs','audio_with_cosine_noise');
% 进行FFT变换
L = length(audio_with_cosine_noise); % 信号的长度
N = 2^nextpow2(L); % 选择最接近的2的幂次作为FFT长度
Y = fft(audio_with_cosine_noise, N)/L; % 进行FFT变换并进行归一化
% 进行频谱的移动
Y_shifted = fftshift(Y);
% 计算频率轴的值
f = (-fs/2:fs/N:fs/2-fs/N);
% 绘制频域图
plot(handles.axes8,f, abs(Y_shifted),'LineWidth',0.5);
xlabel('频率 (Hz)');
ylabel('幅度');
xlim(handles.axes8, [0, fs/2-fs/N]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('recorded_audio','fs','audioData');
% 添加余弦噪声
amplitude = 0.02; % 余弦噪声的振幅
t_1 = (0:length(audioData)-1)/fs;
cosine_noise = amplitude * cos(2*pi*5000*t_1); % 生成与语音信号长度相同的余弦噪声
audio_with_cosine_noise = audioData + cosine_noise'; % 添加余弦噪声后的新信号
% 保存添加噪声后的信号为.mat文件
save('audio_with_cosine_noise.mat', 'audio_with_cosine_noise', 'fs');
% 绘制语音波形图：
duration = 5; % 采集持续时间（秒）
samples = duration * fs; % 采集的样本数
t = (0:samples-1) / fs; % 时间轴
plot(handles.axes7,t, audio_with_cosine_noise,'LineWidth',0.5);
audiowrite('signal_with_noise.mp3', signal_with_noise, sample_rate);
% 保存加噪音频为signal_with_noise_noisy.mp3
filename = 'signal_with_noise.mat';
save(filename, 'signal_with_noise', 'sample_rate');
disp(['语音数据已保存为 ', filename]);
guidata(hObject,handles);


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 读取MAT文件
data = load('signal_with_noise.mat');
% 获取语音数据和采样率
signal_with_noise = data.signal_with_noise;
sample_rate = data.sample_rate;
sound(signal_with_noise,sample_rate);


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('audio_with_cosine_noise','fs','audio_with_cosine_noise');
sound(audio_with_cosine_noise,fs);


% --- Executes during object creation, after setting all properties.
function pushbutton17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
