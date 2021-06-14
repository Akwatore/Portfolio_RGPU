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
    Edit8: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
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
    procedure Edit3KeyPress(Sender: TObject; var Key: char);
    procedure Edit7KeyPress(Sender: TObject; var Key: char);
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
var a,b,s,h,x,kx,ky,y,hsc:real;
    n,xmin,xmax,ymin,ymax,xsc,ysc:integer;
begin
  a:=StrtoFloat(Edit1.Text);
  b:=StrtoFloat(Edit2.Text);
  n:=StrtoInt(Edit7.Text);
  xmin:=StrtoInt(Edit3.Text);
  ymin:=StrtoInt(Edit4.Text);
  xmax:=StrtoInt(Edit5.Text);
  ymax:=StrtoInt(Edit6.Text);
  with Image1.Canvas do
  begin
       Rectangle(0,0,Image1.Width,Image1.Height);
       Pen.Color:=clBlack;
       kx:=Image1.Width/(xmax - xmin);
       ky:=Image1.Height/(ymax - ymin);
       MoveTo(0,round(ymax*ky));
       LineTo(Image1.Width,round(ymax*ky));
       MoveTo(round(-xmin*kx),0);
       LineTo(round(-xmin*kx),Image1.Height);
       x:=xmin;
       hsc:=(xmax-xmin)/100;
       while x<=xmax do
       begin
            y:=sqrt(2*x*x+1.6)/(2*x+sqrt(0.5*x*x+3));
            MoveTo(xsc,ysc);
            xsc:=round((x-xmin)*kx);
            ysc:=round(Image1.Height-(y-ymin)*ky);
            Ellipse(xsc-1,ysc-1,xsc+1,ysc+1);
            x:=x+hsc;
       end;
       h:=(b-a)/n;
       s:=0;
       x:=a;
       y:=sqrt(2*x*x+1.6)/(2*x+sqrt(0.5*x*x+3));
       xsc:=round((x-xmin)*kx);
       ysc:=round(Image1.Height-(y-ymin)*ky);
       MoveTo(xsc,ysc);
       while x<=(b-h) do
       begin
            x:=x+h;
            y:=sqrt(2*x*x+1.6)/(2*x+sqrt(0.5*x*x+3));
            xsc:=round((x-xmin)*kx);
            ysc:=round(Image1.Height-(y-ymin)*ky);
            LineTo(xsc,ysc);
            s:=s + sqrt(2*x*x+1.6)/(2*x+sqrt(0.5*x*x+3));
       end;
       x:=a;
       y:=sqrt(2*x*x+1.6)/(2*x+sqrt(0.5*x*x+3));
       xsc:=round((x-xmin)*kx);
       ysc:=round(Image1.Height-(y-ymin)*ky);
       MoveTo(xsc,ysc);
       Lineto(xsc,round(Image1.Height-(0-ymin)*ky));
       while x<=b-h do
       begin
            x:=x+h;
            y:=sqrt(2*x*x+1.6)/(2*x+sqrt(0.5*x*x+3));
            xsc:=round((x-xmin)*kx);
            ysc:=round(Image1.Height-(y-ymin)*ky);
            MoveTo(xsc,ysc);
            LineTo(xsc,round(Image1.Height-(0-ymin)*ky));
       end;
       Edit8.Text:=FloattoStr(h*s);
  end;
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

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
       '0'..'9', '-': ;
  else Key:=chr(0);
  end;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: char);
begin
  Case Key of
       '0'..'9': ;
  else Key:=chr(0);
  end;
end;

end.

