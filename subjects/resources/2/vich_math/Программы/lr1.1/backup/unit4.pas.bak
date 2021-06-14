unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
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
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;

implementation

Uses Unit1;
{$R *.lfm}

{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
begin
  form4.Close;
  form1.show;
end;

procedure TForm4.Button2Click(Sender: TObject);
var h,x,s:real;
begin
  Edit2.Text:='1';
  Edit3.Text:='0';
  h:=(1-0)/StrtoInt(Edit1.Text);
  Edit4.Text:=FloattoStr(h);
  x:=0;
  s:=0;
  while x<=(1-h) do
  begin
        s:= s + Exp(-1*x*x);
        x:= x+h;
  end;
  s:=s*h;
  Edit5.Text:=FloattoStr(s);
end;

procedure TForm4.Edit1Change(Sender: TObject);
begin

end;

procedure TForm4.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
  '0'..'9', #8: ;
  else Key:=chr(0);
  end;
end;

procedure TForm4.Edit2Change(Sender: TObject);
begin

end;

procedure TForm4.FormCreate(Sender: TObject);
begin

end;

end.

