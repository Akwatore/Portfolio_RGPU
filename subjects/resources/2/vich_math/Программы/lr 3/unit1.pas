unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    StringGrid1: TStringGrid;
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

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
       '0'..'9': ;
  else Key:=chr(0);
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if (Edit1.Text='') then Button1.Enabled:=False
  else Button1.Enabled:=True;
end;

procedure TForm1.Button1Click(Sender: TObject);
var a,b,n,y0,x0:integer;
    x,y,h,e:real;
begin
  n:=StrtoInt(Edit1.Text);
  Edit2.Text:='0';
  Edit3.Text:='1';
  a:=0;
  b:=1;
  h:=(b-a)/n;
  Edit4.Text:=FloattoStr(h);
  x:=0;
  y:=1;
  e:=b-h;
  while (x<=e) do
  begin
    y:=y + h*(y*(1-x));
    RadioGroup1.Caption:=RadioGroup1.Caption ',' FloattoStr(x)';
    x:=x + h;
  end;
end;

end.

