function varargout = GUI_DSP_1_4_1(varargin)
% GUI_DSP_1_4_1 MATLAB code for GUI_DSP_1_4_1.fig
%      GUI_DSP_1_4_1, by itself, creates a new GUI_DSP_1_4_1 or raises the existing
%      singleton*.
%
%      H = GUI_DSP_1_4_1 returns the handle to a new GUI_DSP_1_4_1 or the handle to
%      the existing singleton*.
%
%      GUI_DSP_1_4_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DSP_1_4_1.M with the given input arguments.
%
%      GUI_DSP_1_4_1('Property','Value',...) creates a new GUI_DSP_1_4_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_DSP_1_4_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_DSP_1_4_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_DSP_1_4_1

% Last Modified by GUIDE v2.5 14-Mar-2024 13:04:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_DSP_1_4_1_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_DSP_1_4_1_OutputFcn, ...
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


% --- Executes just before GUI_DSP_1_4_1 is made visible.
function GUI_DSP_1_4_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_DSP_1_4_1 (see VARARGIN)

% Choose default command line output for GUI_DSP_1_4_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_DSP_1_4_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_DSP_1_4_1_OutputFcn(hObject, eventdata, handles) 
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
    set(GUI_DSP_1_4,'Visible','on');
    close(oldFig);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 读取原始图像
original_image = imread('PNG_1.jpg');

I = double(original_image)/255;
[h,w,c] = size(I); %获取图像大小
w0 = 0.95; %去雾系数
dehaze = zeros(h,w,c); %初始化结果图像
win_dark = zeros(h,w); %初始化暗影通道图像

%计算暗通道
%将三个通道中最暗的值赋给win_dark(i,j),使得三维图变成了二维图
for i=1:h
for j=1:w
win_dark(i,j) = min(I(i,j,:));
end
end
win_dark = ordfilt2(win_dark,1,ones(9,9),'symmetric'); %9*9最小值滤波

%计算大气亮度A
dark_channel = win_dark;
A = max(max(dark_channel));
[i0,j0] = find(dark_channel==A);
i = i0(1);
j = j0(1);
A = mean(I(i,j,:));

%计算透射率t(x)
transmission = 1-w0*win_dark/A; %透射率预估
gray_I = I(:,:,3); %这里gray_I可以是RGB图像中任何一个通道
p = transmission; %透射率图
r = 50;
eps = 10^-3;
transmission_filter = guidedfilter(gray_I,p,r,eps);
%用guided filter对trasmission map做soft matting获得更为精细的透射率图

t0=0.1; %设置阈值
t1 = max(t0,transmission_filter);

for i=1:c
for j=1:h
for l=1:w
dehaze(j,l,i)=(I(j,l,i)-A)/t1(j,l)+A; %无雾图像恢复
end
end
end

axes(handles.axes2);
imshow(dehaze);
axis off; % 关闭坐标轴显示


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    img = imread('PNG_1.jpg');
    axes(handles.axes1);
    imshow(img);
    axis off; % 关闭坐标轴显示
