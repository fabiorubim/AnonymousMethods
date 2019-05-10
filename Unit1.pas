unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure ExibirMensagem;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
var
  LForm2 : TForm2;
begin
  LForm2 := TForm2.Create(nil);
//  LForm2.ProcAClicarNoBotao:= procedure
//                              begin
//                                ExibirMensagem;
//                              end;

  //É o mesmo que fazer abaixo, só que sem a necessidade de criar um método anônimo

  LForm2.ProcAClicarNoBotao:= ExibirMensagem;
  LForm2.Show;
end;

procedure TForm1.ExibirMensagem;
begin
  ShowMessage('Método anônimo');
end;

end.
