unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var a,b,c:double;
begin
     a:=StrtoFloat(Edit1.Text);
     b:=StrtoFloat(Edit2.Text);
     c:=a+b;
     Edit3.Text:=FloattoStr(c);
end;

procedure TForm1.Button2Click(Sender: TObject);
var a,b,c:double;
begin
     a:=StrtoFloat(Edit1.Text);
     b:=StrtoFloat(Edit2.Text);
     c:=a-b;
     Edit3.Text:=FloattoStr(c);
end;

procedure TForm1.Button3Click(Sender: TObject);
var a,b,c:double;
begin
     a:=StrtoFloat(Edit1.Text);
     b:=StrtoFloat(Edit2.Text);
     c:=a*b;
     Edit3.Text:=FloattoStr(c);
end;

procedure TForm1.Button4Click(Sender: TObject);
var a,b,c:double;
begin
     a:=StrtoFloat(Edit1.Text);
     b:=StrtoFloat(Edit2.Text);
     c:=a/b;
     Edit3.Text:=FloattoStr(c);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.

