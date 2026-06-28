function varargout = GUI_DSP_1(varargin)
% GUI_DSP_1 MATLAB code for GUI_DSP_1.fig
%      GUI_DSP_1, by itself, creates a new GUI_DSP_1 or raises the existing
%      singleton*.
%
%      H = GUI_DSP_1 returns the handle to a new GUI_DSP_1 or the handle to
%      the existing singleton*.
%
%      GUI_DSP_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DSP_1.M with the given input arguments.
%
%      GUI_DSP_1('Property','Value',...) creates a new GUI_DSP_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_DSP_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_DSP_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_DSP_1

% Last Modified by GUIDE v2.5 13-Mar-2024 18:53:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_DSP_1_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_DSP_1_OutputFcn, ...
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


% --- Executes just before GUI_DSP_1 is made visible.
function GUI_DSP_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_DSP_1 (see VARARGIN)

% Choose default command line output for GUI_DSP_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_DSP_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_DSP_1_OutputFcn(hObject, eventdata, handles) 
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
    set(GUI_DSP_1_1,'Visible','on');
    close(oldFig);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    disp('按钮被点击了');
    oldFig = gcf;
    set(GUI_DSP_1_2,'Visible','on');
    close(oldFig);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    disp('按钮被点击了');
    oldFig = gcf;
    set(GUI_DSP_1_3,'Visible','on');
    close(oldFig);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    disp('按钮被点击了');
    oldFig = gcf;
    set(GUI_DSP_1_4,'Visible','on');
    close(oldFig);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    disp('按钮被点击了');
    oldFig = gcf;
    set(GUI_DSP,'Visible','on');
    close(oldFig);
