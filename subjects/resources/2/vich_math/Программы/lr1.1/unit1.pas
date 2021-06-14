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
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

Uses Unit2,Unit3;
{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  form1.hide;
  form2.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  form1.hide;
  form3.show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

