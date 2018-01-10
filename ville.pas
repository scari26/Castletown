unit ville;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    maisonposs: TLabel;
    maison: TButton;
    contruire: TCheckGroup;
    fermer: TBitBtn;
    bois: TLabel;
    Image1: TImage;
    varbois: TLabel;
    nourr: TLabel;
    varnourr: TLabel;
    suivant: TButton;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


end.

