unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TAFuncSeries, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);
const A= 10; //Первоначальная амплитуда
      b= 0.8; //Коэффициент затухания
      w= 400; //Частота затухающих колебаний
      f= 0.2; //Начальная фаза
var xt, t:real;
    y0: integer;
begin
  with Image1 do //Работа с объектом TImage
  begin
  y0:= Height div 2; //Экранная y
  with Canvas do //Работа с Канвасом
  begin
  Brush.Color:= ClWhite;
  rectangle(0,0,Width,Height); //Закрашиваем фон белым
  Pen.Color:= ClBlack;
  Pen.Width:= 1; //Рисование оси OX
  MoveTo(0,y0);  //которая обозначает время t
  LineTo(Width,y0);
  Pen.Color:= ClBlue; //Изменение цвета и ширины линии
  Pen.Width:= 2;     //для будущего графика
  t:= 0; //Начальное время
  xt:= A; //Начальное положение
  MoveTo(Trunc(t*120),y0-Trunc(xt*30)); //Перемещение курсора в начало графика
  while t <= 10 do //Вычисление x(t) за время t=10
  begin
    t:= t+0.05;
    xt:= A*exp(-b*t)*cos(w*t+f);
    LineTo(Trunc(t*120),y0-Trunc(xt*30)); //Рисуется график
  end;
  end;
  end;
end;
end.

