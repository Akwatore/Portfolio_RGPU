unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm6 }

  TForm6 = class(TForm)
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
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form6: TForm6;

implementation

Uses Unit1;
{$R *.lfm}

{ TForm6 }

procedure TForm6.Button1Click(Sender: TObject);
begin
  form6.Close;
  form1.show;
end;

procedure TForm6.Button2Click(Sender: TObject);
var h,x,s,s1,s2:real;
begin
  Edit2.Text:='1';
  Edit3.Text:='0';
  h:=(1-0)/StrtoInt(Edit1.Text);
  Edit4.Text:=FloattoStr(h);
  x:=0+h;
  s:=Exp(-1*0)+Exp(-1*1);
  s1:=0;
  while x<=(1-h) do
  begin
        s1:=s1 + Exp(-1*x*x);
        x:= x+2*h;
  end;
  x:= x+2*h;
  s2:=0;
  while x<=(1-2*h) do
  begin
        s2:=s2 + Exp(-1*x*x);
        x:= x+2*h;
  end;
  s:=h*(s+s1*4+s2*2)/3;
  Edit5.Text:=FloattoStr(s);
end;

procedure TForm6.Edit1Change(Sender: TObject);
begin

end;

procedure TForm6.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
  '0'..'9', #8: ;
  else Key:=chr(0);
  end;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin

end;


end.

