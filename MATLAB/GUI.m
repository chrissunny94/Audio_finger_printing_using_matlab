function varargout = GUI(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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

function GUI_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);





function varargout = GUI_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function TEST_Callback(hObject, eventdata, handles)
test1;    




function pushbutton2_Callback(hObject, eventdata, handles)
DATABASE_CREATOR;

function pushbutton3_Callback(hObject, eventdata, handles)


function radiobutton1_Callback(hObject, eventdata, handles)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function editTEST_Callback(hObject, eventdata, handles)
% hObject    handle to editTEST (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTEST as text
%        str2double(get(hObject,'String')) returns contents of editTEST as a double
[song,fs] = wavread(get(hObject,'String'));
song=song(:,1);
figure(2)
spectrogram(song,1024,.75*1024,[],fs,'yaxis');

% --- Executes during object creation, after setting all properties.
function editTEST_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
