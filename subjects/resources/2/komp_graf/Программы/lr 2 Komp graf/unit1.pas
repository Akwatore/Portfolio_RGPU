unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
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
var R, a, f0, k, z:real;
    x0, xi, y0, n, i, yi, l:integer;
begin
  n:= StrtoInt(Edit1.Text);
  l:= StrtoInt(Edit2.Text);
  a:=360/n;
  R:= (l/2)/(sin(a/2));
  with Image1.Canvas do
  begin
       brush.Color:=clWhite;
       rectangle(0,0,width,height);
       Pen.Color:=clBlack;
       x0:=Image1.Width div 2;
       y0:=Image1.Height div 2;
       xi:=Round(x0 + R);
       yi:=y0;
       f0:=0;
       MoveTo(xi, yi);
       k:=2*pi/n;
       z:=a*pi/180;
       for i:=1 to n do
       begin
            xi:=Round(x0 + R*cos(f0 + k));
            yi:=Round(y0 + R*sin(f0 + k));
            LineTo(xi,yi);
            f0:=f0 + z;
       end;
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if (Edit1.Text='') or (Edit2.Text='') then Button1.Enabled:=False
  else Button1.Enabled:=True;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
       '0'..'9': ;
  else Key:=chr(0);
  end;
end;

end.

