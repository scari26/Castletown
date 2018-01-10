unit ville;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    commencer: TButton;
    ImFerme: TImage;
    ImMaison: TImage;
    ImBucheron: TImage;
    maisonposs: TLabel;
    maison: TButton;
    contruire: TCheckGroup;
    fermer: TBitBtn;
    bois: TLabel;
    Imchateau: TImage;
    varbois: TLabel;
    nourr: TLabel;
    varnourr: TLabel;
    suivant: TButton;
    procedure commencerClick(Sender: TObject);
    procedure maisonClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Bbucheron,Bferme,Bmaison:Boolean;



implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.maisonClick(Sender: TObject);
begin
  Bmaison:=true;
end;

procedure TForm1.commencerClick(Sender: TObject);
begin
  suivant.Visible:=true;
  bois.Visible:=true;
  varbois.Visible:=true;
  nourr.Visible:=true;
  varnourr.Visible:=true;
  Imchateau.Visible:=true;
  fermer.Visible:=true;
  contruire.Visible:=true;
  maison.Visible:=true;
  maisonposs.Visible:=true;
  commencer.Visible:=false;
end;

end.

