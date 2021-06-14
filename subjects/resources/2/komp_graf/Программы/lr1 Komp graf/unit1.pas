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
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
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

procedure TForm1.Label7Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label11Click(Sender: TObject);
begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if (Edit1.Text='') or (Edit2.Text='') or (Edit3.Text='')
  or (Edit4.Text='') or (Edit5.Text='') or (Edit6.Text='')
  or (Edit7.Text='') then Button1.Enabled:=False
  else Button1.Enabled:=True;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
       '0'..'9', ',' , '-': ;
  else Key:=chr(0);
  end;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var A,B,C,kx,ky,y,x,h:real;
    xmin,xmax,ymin,ymax,xsc,ysc:integer;
begin
  A:=StrtoFloat(Edit1.Text);
  B:=StrtoFloat(Edit2.Text);
  C:=StrtoFloat(Edit3.Text);
  xmin:=StrtoInt(Edit4.Text);
  xmax:=StrtoInt(Edit5.Text);
  ymin:=StrtoInt(Edit6.Text);
  ymax:=StrtoInt(Edit7.Text);
  kx:=Image1.Width/(xmax-xmin);
  ky:=Image1.Height/(ymax-ymin);
  x:=xmin;
  if ((A*x*x+B*x+C) <> 0) then
  begin
  with Image1.Canvas do
  begin
    Rectangle(0,0,Image1.Width,Image1.Height);
    Pen.Color:=clBlack;
    MoveTo(round((0-xmin)*kx),0);
    LineTo(round((0-xmin)*kx),Image1.Height);
    MoveTo(0,round(Image1.Height-(0-ymin)*ky));
    LineTo(Image1.Width,round(Image1.Height-(0-ymin)*ky));
    h:=(xmax - xmin)/100;
    while x<=xmax do
    begin
      y:=1/(A*x*x+B*x+C);
      xsc:=round((x-xmin)*kx);
      ysc:=round(Image1.Height-(y-ymin)*ky);
      Ellipse(xsc-1,ysc-1,xsc+1,ysc+1);
      x:=x+h;
    end;
  end;
  end
  else MessageDlg('Ошибка! Деление на ноль!',mtError,[mbOK],0);
end;
end.
