unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
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
var b,d,hx,hy,sx,sy,x,y,Iy,Ix:real;
    a,c,nx,ny:integer;
begin
  a:=0;
  b:=pi/2;
  c:=0;
  d:=pi/4;
  nx:=StrtoInt(Edit1.Text);
  ny:=StrtoInt(Edit1.Text);
  hx:=(b-a)/nx;
  hy:=(d-c)/ny;
  Edit3.Text:=FloattoStr(hx);
  Edit4.Text:=FloattoStr(hy);
  sx:=0;
  x:=a;
  while (x<=(b-hx)) do
  begin
    sy:=0;
    y:=c;
    while (y<=(d-hy)) do
    begin
      sy:=sy + sin(x+y);
      y:=y + hy;
    end;
    Iy:=hy * sy;
    sx:=sx + Iy;
    x:=x + hx;
  end;
  Ix:=hx * sx;
  Edit5.Text:=FloattoStr(Ix);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if (Edit1.Text='') or (Edit2.Text='')then Button1.Enabled:=False
  else Button1.Enabled:=True;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
       '0'..'9': ;
  else Key:=chr(0);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

