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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
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
     Pen.Color:= clWhite;
     MoveTo(StrToInt(Edit1.Text),StrToInt(Edit4.Text));
     LineTo(StrToInt(Edit2.Text),StrToInt(Edit5.Text));
     LineTo(StrToInt(Edit3.Text),StrToInt(Edit6.Text));
     LineTo(StrToInt(Edit1.Text),StrToInt(Edit4.Text));
     end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;


end.

