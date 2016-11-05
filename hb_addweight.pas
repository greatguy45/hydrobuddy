unit hb_addweight;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Dbf, db, Dbf_Common ;

type

  { TForm_SetWeight }

  TForm_SetWeight = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label_Unit: TLabel;
    Lbl_MassOption: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form_SetWeight: TForm_SetWeight;

implementation

{ TForm_SetWeight }

procedure TForm_SetWeight.Button1Click(Sender: TObject);
var
MyDbf: TDbf;
begin

MyDbf := TDbf.Create(nil) ;
MyDbf.FilePathFull := '';
MyDbf.TableName := 'substances_used.dbf';
MyDbf.Open             ;
MyDbf.Active := true ;

MyDbf.Filter := 'Name=' + QuotedStr(Label2.Caption) ;

    MyDbf.Filtered := true;       // This selects the filtered set
    MyDbf.First;

    MyDbf.Edit;

               MyDbf.FieldByName('Weight').AsFloat:= StrtoFloat(Edit1.Text) ;

    MyDbf.Post ;

MyDbf.Close ;

MyDbf.Free ;

Form_SetWeight.Visible := False ;



end;

initialization
  {$I hb_addweight.lrs}

end.

