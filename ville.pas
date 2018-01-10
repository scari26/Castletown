unit ville;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    bonjour: TButton;
    Label1: TLabel;
    procedure bonjourClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.bonjourClick(Sender: TObject);
begin
  label1.Visible:=false;
end;

end.

