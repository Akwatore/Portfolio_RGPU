unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
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
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form8: TForm8;

implementation

Uses Unit1;
{$R *.lfm}

{ TForm8 }

procedure TForm8.Button1Click(Sender: TObject);
begin
  form8.Close;
  form1.show;
end;

procedure TForm8.Button2Click(Sender: TObject);
var h,s,Ix,I2x,e,R,i:real;
begin
   R:=0;
   Edit2.Text:='1';
   Edit3.Text:='0';
   h:=(1-0)/100;
   e:=StrtoFloat(Edit6.Text);
   s:=0;
   i:=0;
   while (i<=1-h) do
     begin
       s:=s + Exp(-1*(i*i));
       i:=i + h;
     end;
   s:=s * h;
   Ix:=s;
   while (R>e) do
   begin
     s:=0;
     i:=0;
     while (i<=1-h) do
     begin
       s:=s + Exp(-1*(i*i));
       i:=i + h;
     end;
     s:=s * h;
     I2x:=s;
     R:=abs(Ix - I2x);
     Ix:=I2x;
     h:=h/2;
   end;
   Edit4.Text:=FloattoStr(h*2);
   Edit5.Text:=FloattoStr(s);
end;

procedure TForm8.Edit1Change(Sender: TObject);
begin

end;

procedure TForm8.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
  '0'..'9': ;
  else Key:=chr(0);
  end;
end;

procedure TForm8.Edit6KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
  '0'..'9', ',': ;
  else Key:=chr(0);
  end;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin

end;

end.

