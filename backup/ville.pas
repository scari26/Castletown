unit ville;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    Ferme: TButton;
    Bucheron: TButton;
    commencer: TButton;
    ImFerme: TImage;
    ImMaison: TImage;
    ImBucheron: TImage;
    gold: TLabel;
    valor: TLabel;
    maison: TButton;
    fermer: TBitBtn;
    bois: TLabel;
    Imchateau: TImage;
    cochem: TShape;
    CocheF: TShape;
    Cocheb: TShape;
    valbois: TLabel;
    nourr: TLabel;
    valnourr: TLabel;
    suivant: TButton;
    procedure BucheronClick(Sender: TObject);
    procedure commencerClick(Sender: TObject);
    procedure FermeClick(Sender: TObject);
    procedure maisonClick(Sender: TObject);
    procedure suivantClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Bbucheron,Bferme,Bmaison:Boolean; //Boolean pour carés bleu
  varbois,varnourr,varor:integer; //ressources
  tours:integer; //autre

implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.maisonClick(Sender: TObject);
begin
  if cochem.Visible=false then
  begin   //affiche le caré bleu
    Bmaison:=true;
    cochem.Visible:=true;
  end
  else
  begin   //retire le caré bleu
    Bmaison:=false;
    cochem.Visible:=false;
  end;
end;

procedure TForm1.suivantClick(Sender: TObject);
begin
  if Bmaison=true then
  begin
    ImMaison.Visible:=true;
    maison.Visible:=false;
    cochem.Visible:=false;
  end;
  if Bferme=true then
  begin
    Imferme.Visible:=true;
    ferme.Visible:=false;
    cochef.Visible:=false;
  end;
  if Bbucheron=true then
  begin
    Imbucheron.Visible:=true;
    bucheron.Visible:=false;
    cocheb.Visible:=false;
  end;
  if Immaison.visible=true then
  begin //entretien et production maison
    varnourr:=varnourr-15;//entretien
    varbois:=varbois-5;
    varor:=varor+10//production
  end;
  if Imbucheron.visible=true then
  begin //entretien et production bucheron
    varor:=varor-5;//entretien
    varbois:=varbois-5;
    varbois:=varbois+20;//production
  end;
  if Imferme.visible=true then
  begin //entretien et production ferme
    varor:=varor-5;//entretien
    varbois:=varbois-10;
    varnourr:=varnourr+20;//production
  end;
  if Imchateau.visible=true then
  begin //entretien et production chateau
    varor:=varor-10;//entretien
    varbois:=varbois-10;
    varnourr:=varnourr-10;
    varor:=varor+10;//production
    varbois:=varbois+15;
    varnourr:=varnourr+15;
  end;
  valbois.caption:=IntToStr(varbois);      //
  valnourr.caption:=IntToStr(varnourr);    //ecrire la variable des ressources dans leur emplacement
  valor.caption:=IntToStr(varor);          //
end;

procedure TForm1.commencerClick(Sender: TObject);
begin
  suivant.Visible:=true;
  bois.Visible:=true;
  valbois.Visible:=true;
  nourr.Visible:=true;
  valnourr.Visible:=true;
  gold.visible:=true;
  valor.visible:=true;
  Imchateau.Visible:=true;
  fermer.Visible:=true;
  maison.Visible:=true;
  commencer.Visible:=false;
  varbois:=0;
  varnourr:=0;
  varor:=0;
  valbois.caption:=inttostr(varbois);      //
  valnourr.Caption:=inttostr(varnourr);    //ecrire la variable des ressources dans leur emplacement
  valor.caption:=IntToStr(varor);          //
  Bferme:=false;
  Bbucheron:=false;
  ferme.Visible:=true;
  bucheron.Visible:=true;
end;

procedure TForm1.BucheronClick(Sender: TObject);
begin
  if cocheb.Visible=false then
  begin  //affiche le caré bleu
    Bbucheron:=true;
    cocheb.Visible:=true;
  end
  else
  begin  //retire le caré bleu
    Bbucheron:=false;
    cocheb.Visible:=false;
  end;
end;

procedure TForm1.FermeClick(Sender: TObject);
begin
  if cochef.Visible=false then
  begin  //affiche le caré bleu
    Bferme:=true;
    cochef.Visible:=true;
  end
  else
  begin  //retire le caré bleu
    Bferme:=false;
    cochef.Visible:=false;
  end;
end;

end.

