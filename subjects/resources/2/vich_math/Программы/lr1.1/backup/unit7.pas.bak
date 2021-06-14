unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
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
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form7: TForm7;

implementation

Uses Unit1;
{$R *.lfm}

{ TForm7 }

procedure TForm7.Button1Click(Sender: TObject);
begin
  form7.Close;
  form1.show;
end;

procedure TForm7.Button2Click(Sender: TObject);
var h,x,s:real;
begin
  Edit2.Text:='1';
  Edit3.Text:='0';
  h:=(1-0)/StrtoInt(Edit1.Text);
  Edit4.Text:=FloattoStr(h);
  x:=0+h;
  s:=0;
  while x<=(1-h) do
  begin
        s:= s + Exp(-1*x*x);
        x:= x+h;
  end;
  s:=h*((Exp(-1*0)+Exp(-1*1))/2+s);
  Edit5.Text:=FloattoStr(s);
end;

procedure TForm7.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
  '0'..'9', #8: ;
  else Key:=chr(0);
  end;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin

end;

end.

