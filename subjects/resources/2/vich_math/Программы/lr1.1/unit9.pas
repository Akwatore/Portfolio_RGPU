unit Unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Edit6KeyPress(Sender: TObject; var Key: char);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form9: TForm9;

implementation

Uses Unit1;
{$R *.lfm}

{ TForm9 }

procedure TForm9.Button1Click(Sender: TObject);
begin
  form9.Close;
  form1.show;
end;

procedure TForm9.Button2Click(Sender: TObject);
var h,R,s,s1,i,Ix,I2x,e:real;
begin
  Edit2.Text:='1';
  Edit3.Text:='0';
  h:=(1-0)/StrtoInt(Edit1.Text);
  R:=0;
  s:=0;
  e:=StrtoFloat(Edit6.Text);
  i:=h/2;
  s1:=0;
  while(i<=1-h) do
  begin
     s1:=s1 + Exp(-1*(i*i));
     i:=i + h;
  end;
  s1:=s1 * h;
  Ix:=s1;
  s1:=0;
  i:=0;
  while (R > e) do
  begin
       i:=i + h/2;
       while(i<=1-h) do
       begin
            s1:=s1 + Exp(-1*(i*i));
            i:=i + h;
       end;
       s1:=s1 * h;
       I2x:=s1;
       r:=abs(Ix - I2x);
       Ix:=I2x;
       h:=h/2;
       s:=s + s1;
  end;
  Edit4.Text:=FloattoStr(h*2);
  Edit5.Text:=FloattoStr(s1);
end;

procedure TForm9.Edit1Change(Sender: TObject);
begin

end;

procedure TForm9.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
  '0'..'9': ;
  else Key:=chr(0);
  end;
end;

procedure TForm9.Edit6KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
  '0'..'9', ',': ;
  else Key:=chr(0);
  end;
end;

end.

