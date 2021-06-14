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
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

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
    brush.Color:=clWhite;
    rectangle(0,0,width,height);
    MoveTo(200,60);
    Pen.Color := clBlack;
    LineTo ( 100, 120 );
    Pen.Color := clRed;
    LineTo ( 300, 150 );
    Pen.Color := clBlue;
    LineTo ( 200, 60 );
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  end;
end.


end.

