unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
begin
  with Image1.Canvas do
  begin
       Brush.Color := clBlack;
       Pen.Color:=clBlue;
       Rectangle(50,70,200,230);
       Ellipse (50, 55, 200, 85);
       Ellipse (50, 215, 200, 245);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  with Image2.Canvas do
  begin
       Brush.Color := clBlack;
       Pen.Color:=clBlue;
       Rectangle(20,100,170,250);
       Polygon([Point(20,100),Point(90,60),Point(240,60),Point(170,100)]);
       Polygon([Point(170,100),Point(240,60),Point(240,200),Point(170,250)]);
       MoveTo(20,250);
       LineTo(90,200);
       LineTo(90,60);
       MoveTo(90,200);
       LineTo(240,200);
  end;
end;

end.

