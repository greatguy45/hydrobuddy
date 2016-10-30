unit HB_Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ComCtrls, StdCtrls, Menus, ExtCtrls, Buttons, Grids, TAGraph, TASeries,
  Dbf, DB, Math, densesolver, hb_commercialnutrient,
  hb_waterquality, hb_addweight, hb_insprecision, hb_stockanalysis,
  hb_persubstance, hb_datasetname, hb_analysis, descriptivestatistics,
  hb_freedom, dbf_fields, hb_ratios,LCLIntf, types,hb_newcustomsalt;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button10:   TButton;
    Button11:   TButton;
    Button12: TBitBtn;
    Button13: TBitBtn;
    Button14: TBitBtn;
    Button15:   TButton;
    Button16:   TButton;
    Button17:   TButton;
    Button18:   TButton;
    Button19:   TButton;
    Btn_Calculate: TBitBtn;
    Button20: TButton;
    Button21: TButton;
    Btn_ChooseDegreeofFreedom: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    BtnAddRawSaltForCalc: TBitBtn;
    BtnRemoveSaltFromCalc: TBitBtn;
    Button29: TBitBtn;
    Button3:    TButton;
    Button30: TBitBtn;
    Button31: TBitBtn;
    Button32: TBitBtn;
    Button33: TBitBtn;
    Btn_SaveFormulaToDB:    TButton;
    Button5:    TButton;
    Btn_DeleteFormulaFromDB:    TButton;
    Btn_AddCommFormula:    TButton;
    Btn_SetWtrQuality:    TButton;
    Btn_SetInstrPrecision:    TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Chart1LineSeries2: TLineSeries;
    Chart1LineSeries3: TLineSeries;
    Chart1LineSeries4: TLineSeries;
    CheckBox1:  TCheckBox;
    CheckBox2: TCheckBox;
    ChkBox_DisablePopUp: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    ComboBox1:  TComboBox;
    ComboBox2:  TComboBox;
    ComboBox3: TComboBox;
    Edit1:      TEdit;
    Edit10:     TEdit;
    Edit11:     TEdit;
    Edit12:     TEdit;
    Edit13:     TEdit;
    Edit14:     TEdit;
    Edit16:     TEdit;
    Edit18:     TEdit;
    Edit20:     TEdit;
    Edit21:     TEdit;
    Edit22:     TEdit;
    Edit23:     TEdit;
    Edit19:     TEdit;
    Edit15:     TEdit;
    Label28: TLabel;
    StringGrid_Contribution: TStringGrid;
    StringGrid_Result: TStringGrid;
    TxtBox_ConcFactor:     TEdit;
    Edit2:      TEdit;
    Edit3:      TEdit;
    Edit4:      TEdit;
    Edit5:      TEdit;
    Edit6:      TEdit;
    Edit7:      TEdit;
    Edit8:      TEdit;
    Edit9:      TEdit;
    Image1:     TImage;
    Image10:    TImage;
    Image2:     TImage;
    Image3:     TImage;
    Image4:     TImage;
    Image5:     TImage;
    Image6:     TImage;
    Image7:     TImage;
    Image8:     TImage;
    Image9:     TImage;
    Label1:     TLabel;
    Label10:    TLabel;
    Label11:    TLabel;
    Label12:    TLabel;
    Label13:    TLabel;
    Label14:    TLabel;
    Label16:    TLabel;
    Label18: TLabel;
    Label19:    TLabel;
    Label20:    TLabel;
    Label21:    TLabel;
    Label22:    TLabel;
    Label23:    TLabel;
    Label24:    TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Lbl_FormulaName: TLabel;
    Lbl_Err_NO3: TLabel;
    Label29:    TLabel;
    Label30:    TLabel;
    Label31:    TLabel;
    Label32:    TLabel;
    Label36: TLabel;
    Label39: TLabel;
    Lbl_Err_NH: TLabel;
    Lbl_Err_P: TLabel;
    Lbl_Err_K: TLabel;
    Lbl_Err_Ca: TLabel;
    Lbl_Err_Mg: TLabel;
    Label45:    TLabel;
    Label46:    TLabel;
    Lbl_Err_Fe: TLabel;
    Lbl_Err_S: TLabel;
    Lbl_Err_B: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Lbl_Err_Zn: TLabel;
    Lbl_Err_Mn: TLabel;
    Lbl_Err_Cu: TLabel;
    Lbl_Err_Mo: TLabel;
    Lbl_Err_Na: TLabel;
    Lbl_Err_Si: TLabel;
    Lbl_Err_Cl: TLabel;
    LabelVersion: TLabel;
    Label55:    TLabel;
    Label17:    TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Memo1: TMemo;
    MenuItem2: TMenuItem;
    PageControl2: TPageControl;
    Panel6:     TPanel;
    Panel7:     TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    PopupMenu1: TPopupMenu;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RLabel1:    TLabel;
    Label2:     TLabel;
    RLabel16:   TLabel;
    RLabel3:    TLabel;
    RLabel2:    TLabel;
    RLabel4:    TLabel;
    RLabel5:    TLabel;
    RLabel6:    TLabel;
    RLabel7:    TLabel;
    RLabel8:    TLabel;
    RLabel9:    TLabel;
    RLabel10:   TLabel;
    RLabel11:   TLabel;
    Label3:     TLabel;
    RLabel12:   TLabel;
    RLabel13:   TLabel;
    RLabel14:   TLabel;
    Label33:    TLabel;
    Label34:    TLabel;
    Label35:    TLabel;
    Label37:    TLabel;
    Label38:    TLabel;
    Label15:    TLabel;
    Label4:     TLabel;
    RLabel15:   TLabel;
    Label5:     TLabel;
    Label6:     TLabel;
    Label7:     TLabel;
    Label8:     TLabel;
    Label9:     TLabel;
    PageControl1: TPageControl;
    Panel1:     TPanel;
    Panel2:     TPanel;
    Panel3:     TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadBtn_ABSolution: TRadioButton;
    RadBtn_DirectAddition: TRadioButton;
    SaveDialog1: TSaveDialog;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    TabSheet1:  TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet2:  TTabSheet;
    TabSheet3:  TTabSheet;
    TabSheet4:  TTabSheet;
    TabSheet5:  TTabSheet;
    TabSheet6:  TTabSheet;
    TabSheet7:  TTabSheet;
    TabSheet8:  TTabSheet;
    TabSheet9:  TTabSheet;
    ToggleBox1: TToggleBox;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    //procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Btn_ChooseDegreeofFreedomClick(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure BtnAddRawSaltForCalcClick(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Btn_CalculateClick(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Btn_SaveFormulaToDBClick(Sender: TObject);
    procedure Btn_SaveFormulaToDBResize(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Btn_DeleteFormulaFromDBClick(Sender: TObject);
    procedure Btn_AddCommFormulaClick(Sender: TObject);
    procedure Btn_SetWtrQualityClick(Sender: TObject);
    procedure Btn_SetInstrPrecisionClick(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure ChkBox_DisablePopUpChange(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit25Change(Sender: TObject);
    procedure FormWindowStateChange(Sender: TObject);
    procedure ListBox1SelectionChange(Sender: TObject; User: boolean);
    procedure ListBox2SelectionChange(Sender: TObject; User: boolean);
    procedure MenuItem2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure RadioButton10Change(Sender: TObject);
    procedure RadioButton11Change(Sender: TObject);
    procedure RadioButton12Change(Sender: TObject);
    procedure RadioButton13Change(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure RadioButton5Change(Sender: TObject);
    procedure RadBtn_ABSolutionChange(Sender: TObject);
    procedure RadBtn_DirectAdditionChange(Sender: TObject);
    procedure RadioButton8Change(Sender: TObject);
    procedure RadioButton9Change(Sender: TObject);
    procedure BtnRemoveSaltFromCalcClick(Sender: TObject);
    procedure StringGrid3SelectCell(Sender: TObject; aCol, aRow: Integer;
      var CanSelect: Boolean);
    procedure TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ToggleBox1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure weightFineTunning;
    procedure UpdateSaltList;
    procedure UpdateComboBox;
    procedure UpdateComboBox2;
    procedure setinivalues ;
    procedure UpdateDB_substances ;
    procedure cleanresults;
    function getratio(first: string; second: string; third: string; items: integer): string ;
    procedure UpdateDB_formulations ;
    procedure getmolarmasses(var molar_mass: array of double) ;
    procedure getequivalents(var equivalents: array of integer);
    function round2(const Number: extended; const Places: longint): extended;
  end;

var
  Form1: TForm1;
  datasetname : String ;
  prev_conc :string ;
  selected_cell: string ;

implementation

{ TForm1 }

procedure TForm1.UpdateComboBox;
var
  MyDbf: TDbf;
begin

  HB_Main.Form1.ComboBox1.Items.Clear;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'formulations.dbf';
  MyDbf.Open;
  MyDbf.Active := True;

  MyDbf.First;                  // moves to the first data

  while not MyDbf.EOF do
  begin
    HB_Main.Form1.ComboBox1.Items.Add(MyDbf.FieldByName('Name').AsString);
    MyDbf.Next;                                     // use .next here NOT .findnext!
  end;

  MyDbf.Close;

  MyDbf.Free;

end;

procedure TForm1.UpdateComboBox2;
var
  MyDbf: TDbf;
  i:     integer;
  j:     integer;
  currentname : string ;
begin

  ComboBox2.Items.Clear;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'datalog.dbf';
  MyDbf.Open;
  MyDbf.Active := True;

  currentname := 'null' ;

  MyDbf.First;                  // moves to the first data

  while not MyDbf.EOF do
  begin

    if (currentname <> MyDbf.FieldByName('Name').AsString) then

       begin

       ComboBox2.Items.Add(MyDbf.FieldByName('Name').AsString);
       currentname := MyDbf.FieldByName('Name').AsString ;

       end;

    MyDbf.Next;
                                        // use .next here NOT .findnext!
  end;

  MyDbf.Close;

  MyDbf.Free;

end;

function TForm1.round2(const Number: extended; const Places: longint): extended;
var
  t: extended;
begin
  t      := power(10, places);
  round2 := round(Number * t) / t;
end;

procedure TForm1.UpdateSaltList;
var
  MyDbf: TDbf;
  i:     integer;
  j:     integer;
begin

  Form1.ListBox1.Items.Clear;
  Form1.ListBox2.Items.Clear;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances.dbf';
  MyDbf.Open;
  MyDbf.Active := True;

  MyDbf.First;                  // moves to the first data

  while not MyDbf.EOF do
  begin
    Form1.ListBox1.Items.Add(MyDbf.FieldByName('Name').AsString);

    MyDbf.Next;                                     // use .next here NOT .findnext!
  end;

  MyDbf.Close;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances_used.dbf';
  MyDbf.Open;
  MyDbf.Active := True;

  MyDbf.First;                  // moves to the first data

  while not MyDbf.EOF do
  begin
    Form1.ListBox2.Items.Add(MyDbf.FieldByName('Name').AsString);
    MyDbf.Next;                                     // use .next here NOT .findnext!
  end;

  MyDbf.Close;

  MyDbf.Free;

  for i := 0 to Form1.ListBox2.Items.Count - 1 do

  begin

    j := 0;

    while j <= Form1.ListBox1.Items.Count - 1 do

    begin

      if (Form1.ListBox1.Items[j] = Form1.ListBox2.Items[i]) then

      begin
        Form1.ListBox1.Items.Delete(j);
        j := j + 1;
      end;

      j := j + 1;

    end;

  end;


  // sort listboxes
  Form1.ListBox2.Sorted := true ;
  Form1.ListBox1.Sorted := true ;

end;

{
procedure TForm1.Button1Click(Sender: TObject);
begin

  UpdateSaltList;

  Form2.Visible := True;
end;
 }
procedure TForm1.Button20Click(Sender: TObject);
var
i : integer ;
selected_item : integer ;
MyDbf: TDbf;
begin


   MyDbf := TDbf.Create(nil) ;
   MyDbf.FilePathFull := '';
   MyDbf.TableName := 'datalog.dbf';
   MyDbf.Open             ;
   MyDbf.Active := true ;

  i := 0 ;

  // this while statement was included since sometimes data points were
  // not adequately deleted, this ensures full deletion of the target set
  while i < StringGrid3.RowCount  - 1 do

  begin

    MyDbf.Filter := 'Name=' + QuotedStr(datasetname) ;

    MyDbf.Filtered := true;       // This selects the filtered set
    MyDbf.First;                  // moves the the first filtered data

     while not MyDbf.EOF do
  begin

    MyDbf.Delete;

    i := i + 1 ;

    MyDbf.Next;
                                       // use .next here NOT .findnext!
  end;

  end ;

    MyDbf.Close ;

    MyDbf.Free ;

    for i:= 0 to ComboBox2.Items.Count - 1    do

    begin

    if ComboBox2.Items[i] = datasetname then
    selected_item := i

    end;

    ComboBox2.Items.Delete(selected_item) ;

    ShowMessage('Data set called ' + datasetname + ' has been deleted' );

    StringGrid3.Clean ;
    StringGrid4.Clean ;
    StringGrid3.RowCount := 1 ;
    StringGrid4.RowCount := 1 ;

    datasetname := '' ;

end;

procedure TForm1.Button21Click(Sender: TObject);
var
  i: integer;
begin

  with TStringList.Create do

    try



      Add(' , , ');

      if CheckBox2.Checked = false then

      begin


      for i := 0 to StringGrid3.RowCount  - 1 do

      begin

        Add(StringGrid3.Cells[0,i] + ',' + StringGrid3.Cells[1,i] + ',' + StringGrid3.Cells[2,i] );

      end;

      end;


      if CheckBox2.Checked = true then

      begin

      for i := 0 to StringGrid3.RowCount  - 1 do

      begin

        Add(StringGrid3.Cells[0,i] + ',' + StringGrid3.Cells[1,i] + ',' + StringGrid3.Cells[2,i] + ','
        + StringGrid3.Cells[0,i]  + ',' + StringGrid3.Cells[1,i] );

      end;

      end;

      if SaveDialog1.Execute then
        SaveToFile(SaveDialog1.filename);

    finally

      Free;

    end;

end;

procedure TForm1.Btn_ChooseDegreeofFreedomClick(Sender: TObject);
begin
  hb_freedom.Form12.Visible := true ;;
end;

procedure TForm1.Button23Click(Sender: TObject);
var
  MyDbf: TDbf;
  FieldDefs: TDbfFieldDefs;
begin
{
MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances_used.dbf';
  MyDbf.Open;
  FieldDefs := TDbfFieldDefs.Create(nil);
  FieldDefs.Assign(MyDbf.DbfFieldDefs);
  MyDbf.Close;
  FieldDefs.Add('Density', ftFloat, 0, False);
  FieldDefs.Add('IsLiquid',ftInteger, 0, False);
  MyDbf.RestructureTable(FieldDefs, True);
  MyDbf.Free;
  FieldDefs.Free;
  }

  {
  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'formulations.dbf';
  MyDbf.Open;
  FieldDefs := TDbfFieldDefs.Create(nil);
  FieldDefs.Assign(MyDbf.DbfFieldDefs);
  MyDbf.Close;
  FieldDefs.Add('Units', ftString, 80, False);
  MyDbf.RestructureTable(FieldDefs, True);
  MyDbf.Free;
  FieldDefs.Free;
  }

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'waterquality.dbf';
  MyDbf.Open;
  FieldDefs := TDbfFieldDefs.Create(nil);
  FieldDefs.Assign(MyDbf.DbfFieldDefs);
  MyDbf.Close;
  FieldDefs.Add('pH', ftFloat, 0, False);
  FieldDefs.Add('GH', ftFloat, 0, False);
  FieldDefs.Add('KH', ftFloat, 0, False);
  MyDbf.RestructureTable(FieldDefs, True);
  MyDbf.Free;
  FieldDefs.Free;


end;

procedure TForm1.Button24Click(Sender: TObject);
var
  MyDbf: TDbf;
  FieldDefs: TDbfFieldDefs;
begin


  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances.dbf';
  MyDbf.Open;
  FieldDefs := TDbfFieldDefs.Create(nil);
  FieldDefs.Assign(MyDbf.DbfFieldDefs);
  MyDbf.Close;

  ShowMessage(InttoStr(FieldDefs.Count) + ' '+ MyDbf.TableName) ;

  FieldDefs.Free ;
  MyDbf.Free ;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances_used.dbf';
  MyDbf.Open;
  FieldDefs := TDbfFieldDefs.Create(nil);
  FieldDefs.Assign(MyDbf.DbfFieldDefs);
  MyDbf.Close;

  ShowMessage(InttoStr(FieldDefs.Count) + ' '+ MyDbf.TableName) ;

  FieldDefs.Free ;
  MyDbf.Free ;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'formulations.dbf';
  MyDbf.Open;
  FieldDefs := TDbfFieldDefs.Create(nil);
  FieldDefs.Assign(MyDbf.DbfFieldDefs);
  MyDbf.Close;

  ShowMessage(InttoStr(FieldDefs.Count) + ' '+ MyDbf.TableName) ;

  FieldDefs.Free ;
  MyDbf.Free ;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'waterquality.dbf';
  MyDbf.Open;
  FieldDefs := TDbfFieldDefs.Create(nil);
  FieldDefs.Assign(MyDbf.DbfFieldDefs);
  MyDbf.Close;

  ShowMessage(InttoStr(FieldDefs.Count) + ' '+ MyDbf.TableName) ;

  FieldDefs.Free ;
  MyDbf.Free ;

  {

MyDbf := TDbf.Create(nil) ;
MyDbf.FilePathFull := '';
MyDbf.TableName := 'substances.dbf';
MyDbf.Open             ;
MyDbf.Active := true ;

while not MyDbf.EOF do
    begin

        MyDbf.Edit;

        MyDbf.FieldByName('Density').AsFloat := 0 ;

        MyDbf.Post ;

        MyDbf.next;                                   // use .next here NOT .findnext!
    end;


MyDbf.Close ;

MyDbf.Free ;

}

end;

procedure TForm1.Button25Click(Sender: TObject);
begin
  hb_ratios.Form14.Visible := true ;
end;

procedure TForm1.Button26Click(Sender: TObject);
begin

end;


procedure TForm1.BtnAddRawSaltForCalcClick(Sender: TObject);
var
MyDbf: TDbf;
i : integer ;
selected_item : integer ;
values_to_copy : array of double ;
name1 : string ;
conctype : string ;
formula1 : string ;
begin

if ListBox1.SelCount = 0 then // No ítems selected
     Exit;

SetLength(values_to_copy, 20) ;

MyDbf := TDbf.Create(nil) ;
MyDbf.FilePathFull := '';
MyDbf.TableName := 'substances.dbf';
MyDbf.Open             ;

For i := 0 to ListBox1.Items.Count - 1 do

         begin
                               if ListBox1.Selected [i] then
                               begin
                                selected_item := i ;
                               end;
         end;

MyDbf.Filter := 'Name=' + QuotedStr(ListBox1.Items[selected_item]) ;

    MyDbf.Filtered := true;       // This selects the filtered set
    MyDbf.First;                  // moves the the first filtered data
    name1 :=  MyDbf.FieldByName('Name').AsString ;
    formula1 := MyDbf.FieldByName('Formula').AsString ;
    values_to_copy[0] := MyDbf.FieldByName('Purity').AsFloat ;
    values_to_copy[1] := MyDbf.FieldByName('N (NO3-)').AsFloat ;
    values_to_copy[2] := MyDbf.FieldByName('P').AsFloat ;
    values_to_copy[3] := MyDbf.FieldByName('K').AsFloat ;
    values_to_copy[4] := MyDbf.FieldByName('Mg').AsFloat ;
    values_to_copy[5] := MyDbf.FieldByName('Ca').AsFloat ;
    values_to_copy[6] := MyDbf.FieldByName('S').AsFloat ;
    values_to_copy[7] := MyDbf.FieldByName('B').AsFloat ;
    values_to_copy[8] := MyDbf.FieldByName('Fe').AsFloat ;
    values_to_copy[9] := MyDbf.FieldByName('Zn').AsFloat ;
    values_to_copy[10] := MyDbf.FieldByName('Cu').AsFloat ;
    values_to_copy[11] := MyDbf.FieldByName('Mo').AsFloat ;
    values_to_copy[12] := MyDbf.FieldByName('Na').AsFloat ;
    values_to_copy[13] := MyDbf.FieldByName('Si').AsFloat ;
    values_to_copy[14] := MyDbf.FieldByName('Cl').AsFloat ;
    values_to_copy[15] := MyDbf.FieldByName('Mn').AsFloat ;
    values_to_copy[16] := MyDbf.FieldByName('N (NH4+)').AsFloat ;
    values_to_copy[17] := MyDbf.FieldByName('Cost').AsFloat ;
    values_to_copy[18] := MyDbf.FieldByName('IsLiquid').AsFloat ;
    values_to_copy[19] := MyDbf.FieldByName('Density').AsFloat ;
    conctype := MyDbf.FieldByName('ConcType').AsString ;

MyDbf.Close ;

MyDbf.FilePathFull := '';
MyDbf.TableName := 'substances_used.dbf';
MyDbf.Open             ;
MyDbf.Active := true ;

MyDbf.Insert ;

MyDbf.FieldByName('Name').AsString:= name1 ;
MyDbf.FieldByName('Formula').AsString:= formula1;
MyDbf.FieldByName('Purity').AsFloat:=values_to_copy[0] ;
MyDbf.FieldByName('N (NO3-)').AsFloat:=values_to_copy[1];
MyDbf.FieldByName('P').AsFloat:=values_to_copy[2];
MyDbf.FieldByName('K').AsFloat:=values_to_copy[3];
MyDbf.FieldByName('Mg').AsFloat:=values_to_copy[4];
MyDbf.FieldByName('Ca').AsFloat:=values_to_copy[5];
MyDbf.FieldByName('S').AsFloat:=values_to_copy[6];
MyDbf.FieldByName('B').AsFloat:=values_to_copy[7];
MyDbf.FieldByName('Fe').AsFloat:=values_to_copy[8];
MyDbf.FieldByName('Zn').AsFloat:=values_to_copy[9];
MyDbf.FieldByName('Cu').AsFloat:=values_to_copy[10];
MyDbf.FieldByName('Mo').AsFloat:=values_to_copy[11];
MyDbf.FieldByName('Na').AsFloat:=values_to_copy[12];
MyDbf.FieldByName('Si').AsFloat:=values_to_copy[13];
MyDbf.FieldByName('Cl').AsFloat:=values_to_copy[14];
MyDbf.FieldByName('Mn').AsFloat:=values_to_copy[15];
MyDbf.FieldByName('N (NH4+)').AsFloat:=values_to_copy[16];
MyDbf.FieldByName('Weight').AsFloat:=0;
MyDbf.FieldByName('Cost').AsFloat:= values_to_copy[17] ;
MyDbf.FieldByName('IsLiquid').AsInteger:=Round(values_to_copy[18]);
MyDbf.FieldByName('Density').AsFloat := values_to_copy[19] ;
MyDbf.FieldByName('ConcType').AsString:= conctype ;

MyDbf.Post ;

MyDbf.Close ;

MyDbf.Free ;

ListBox1.Items.Delete(selected_item);
ListBox2.Items.Add(name1);

end;

procedure TForm1.Button29Click(Sender: TObject);
begin

  hb_newcustomsalt.Form3.ComboBox1.ItemIndex := 0;

  hb_newcustomsalt.Form3.ComboBox2.ItemIndex := 0 ;

  hb_newcustomsalt.Form3.ComboBox3.ItemIndex := 0 ;

  hb_newcustomsalt.Form3.CheckBox2.Checked := false;

  hb_newcustomsalt.Form3.Edit22.Visible := false;

  hb_newcustomsalt.Form3.Label22.Visible := false ;

  hb_newcustomsalt.Form3.Button1.Enabled := True ;

  hb_newcustomsalt.Form3.Button2.Enabled := False ;

  hb_newcustomsalt.Form3.Visible := true ;
end;

procedure TForm1.weightFineTunning;
var
  MyDbf:  TDbf;
  i:      integer;
  j:      integer;
  varcount: integer;
  Volume: double;
  array_size: integer;
  answer: integer;
  arraysize: integer;
  nameSubstance: string;
  weight : double;
  report: DenseSolverLSReport;
  solutions: array of double;
  varnames: array of string;
  temp:   array of string;
  temp2:  array of double;
  vartargetvalue: array of double;
  degree_of_freedom: string;
  Result: array of double;
  test:   double;
  grossError: array[0..15] of double;
  instrumentalError: array[0..15] of double;
  elementInSolutionA: array[0..15] of double;
  elementInSolutionB: array[0..15] of double;
  volumeunit: string;
  waterquality: array of double;
  instrumental_error: array of double;
  all_element_contributions : array of array of double ;
  all_element_names : array of string;
  all_element_targets : array of double ;
  preloaded_weight: array of double ;
  upper:  double;
  lower:  double;
  weight_error: double;
  volume_error: double;
  weight_factor: double;
  ec_contribution: array of double;
  molar_mass: array[0..15] of double ;
  cost:   array of double;
  conc_factor: array of double ;
  equivalents: array[0..15] of integer ;
  predicted_ec: double;
  nameToCompare: string;
begin

   // clear listbox to get rid of old solutions

  hb_ratios.Form14.StringGrid1.Clean;
  hb_ratios.Form14.StringGrid1.RowCount := 1 ;
  hb_persubstance.Form9.StringGrid1.Clean;
  hb_persubstance.Form9.StringGrid1.RowCount := 1 ;
  hb_stockanalysis.Form8.StringGrid1.Clean ;

  // EC parameters

  SetLength(ec_contribution, 16);

  ec_contribution[0]  := 71.46 / 14;
  ec_contribution[1]  := 73 / 39;
  ec_contribution[2]  := 57 / 31;
  ec_contribution[3]  := 106 / 24.30;
  ec_contribution[4]  := 119 / 40;
  ec_contribution[5]  := 160 / 32;
  ec_contribution[6]  := 108.0 / 56;
  ec_contribution[7]  := 0;
  ec_contribution[8]  := 0;
  ec_contribution[9]  := 0;
  ec_contribution[10] := 0;
  ec_contribution[11] := 50.01 / 23;
  ec_contribution[12] := 100 / 28.09;
  ec_contribution[13] := 76.35 / 35.5;
  ec_contribution[14] := 0;
  ec_contribution[15] := 73.5 / 14;

  // define water quality parameters

  SetLength(waterquality, 16);

  waterquality[0]  := StrtoFloat(hb_waterquality.Form6.Edit1.Text);
  waterquality[1]  := StrtoFloat(hb_waterquality.Form6.Edit2.Text);
  waterquality[2]  := StrtoFloat(hb_waterquality.Form6.Edit3.Text);
  waterquality[3]  := StrtoFloat(hb_waterquality.Form6.Edit4.Text);
  waterquality[4]  := StrtoFloat(hb_waterquality.Form6.Edit5.Text);
  waterquality[5]  := StrtoFloat(hb_waterquality.Form6.Edit6.Text);
  waterquality[6]  := StrtoFloat(hb_waterquality.Form6.Edit7.Text);
  waterquality[7]  := StrtoFloat(hb_waterquality.Form6.Edit8.Text);
  waterquality[8]  := StrtoFloat(hb_waterquality.Form6.Edit9.Text);
  waterquality[9]  := StrtoFloat(hb_waterquality.Form6.Edit10.Text);
  waterquality[10] := StrtoFloat(hb_waterquality.Form6.Edit11.Text);
  waterquality[11] := StrtoFloat(hb_waterquality.Form6.Edit12.Text);
  waterquality[12] := StrtoFloat(hb_waterquality.Form6.Edit13.Text);
  waterquality[13] := StrtoFloat(hb_waterquality.Form6.Edit14.Text);
  waterquality[14] := StrtoFloat(hb_waterquality.Form6.Edit15.Text);
  waterquality[15] := StrtoFloat(hb_waterquality.Form6.Edit16.Text);

  // set instrument precision values

  volume_error := StrtoFloat(hb_insprecision.Form7.Edit1.Text) * 0.001;

  weight_error := StrtoFloat(hb_insprecision.Form7.Edit2.Text);

  // set weight factor (g) or (oz)

  if RadioButton8.Checked then
    weight_factor := 1;

  if RadioButton9.Checked then
    weight_factor := 0.0352739619;

  // update list to get matrix size from used substances

  UpdateSaltList;

  arraysize := Form1.ListBox2.Items.Count;

  // define volume taking into account radio box setting for units
  // the end input volume is always converted to cubic meters
  // which is the unit used within all calculations ppm = g/m3

  // cubic meter
  Volume := StrtoFloat(Edit19.Text);

  // liter conversion
  if Radiobutton1.Checked then
    Volume := Volume / 1000;

  // gallon conversion
  if Radiobutton2.Checked then
    Volume := Volume * 3.78541178 / 1000;

  // correct volume if using concentrated solutions.
  if RadBtn_ABSolution.Checked then
  Volume := Volume * StrToFloat(TxtBox_ConcFactor.Text);

  array_size := Form1.ListBox2.Items.Count;

  varcount := 0;

  // set and define molar mass array (contains molar masses for elements)

  getmolarmasses(molar_mass) ;
  getequivalents(equivalents) ;

  // define concentration conversion factor array

  SetLength(conc_factor, 16) ;

  // set size of string grid for solutions

  StringGrid2.RowCount := arraysize + 1 ;


  // set values for the concentration factor according to selected units


  // conversion factor for ppm is 1 for all values (no conversion needed)
  if RadioButton10.Checked then

  begin

  prev_conc := 'ppm' ;

       for i:= 0 to 15 do

       begin

       conc_factor[i] := 1 ;

       end ;

  end ;

  // conversion factor for M (mol/L)
 if RadioButton11.Checked then

  begin

       for i:= 0 to 15 do

       begin

       conc_factor[i] := 1000*molar_mass[i] ;

       end ;

  end ;

 // conversion factor for mM (mmol/L)
if RadioButton12.Checked then

 begin

      for i:= 0 to 15 do

      begin

      conc_factor[i] := molar_mass[i] ;

      end ;

 end;

// conversion factor for mN (meq/L)
if RadioButton13.Checked then

 begin

      for i:= 0 to 15 do

      begin

      conc_factor[i] := molar_mass[i]/equivalents[i] ;

      end ;

 end ;

    varnames := nil ;
    Result := nil ;

    SetLength(varnames, 16);
    SetLength(Result, 16);
    SetLength(all_element_targets, 16);

    for j := 1 to 16 do
    begin

      // load all element names (this time we don't need to discriminate as
      // we simply calculate for everyone
      varnames[j - 1] := (FindComponent('Label' + IntToStr(j)) as TLabel).Caption;
      all_element_targets[j-1] := StrToFloat((FindComponent('Edit' + IntToStr(j)) as TEdit).Text);
      StringGrid1.Cells[2, j] := '0';
      StringGrid1.Cells[3, j] := '0';
      grossError[j-1] := 0;
      instrumentalError[j-1] := 0;
      elementInSolutionA[j-1] := 0;
      elementInSolutionB[j-1] := 0;

    end;

    // load the database in order to get the weights and find the resulting ppm values

    MyDbf := TDbf.Create(nil);
    MyDbf.FilePathFull := '';
    MyDbf.TableName := 'substances_used.dbf';
    MyDbf.Open;
    MyDbf.Active := True;

    for i := 1 to StringGrid2.RowCount - 1 do
    begin

    MyDbf.First;                  // moves to the first data

    while not MyDbf.EOF do
    begin

      nameSubstance := MyDbf.FieldByName('Name').AsString;
      weight := StrToFloat(StringGrid2.Cells[2, i]);
      nameToCompare := StringGrid2.Cells[0, i] ;

      If RadBtn_ABSolution.Checked then
      nameToCompare := Copy(nameToCompare, 5, Length(nameToCompare));

      if nameSubstance = nameToCompare then
      begin

      for j := 0 to 15 do

      begin

        // ppm values are very easily calculated using all the information
        // within the DB
        Result[j] := (1 / weight_factor) * weight *
          0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName(
          'Purity').AsFloat / Volume + Result[j];

        if ((1 / weight_factor) * weight *
          0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName(
          'Purity').AsFloat / Volume > 0) then

        begin

        if (StringGrid2.Cells[0, i][1] = 'A') and (RadBtn_ABSolution.Checked) then
        elementInSolutionA[j] := Result[j] + elementInSolutionA[j] ;

        if (StringGrid2.Cells[0, i][1] = 'B') and (RadBtn_ABSolution.Checked) then
        elementInSolutionB[j] := Result[j] + elementInSolutionB[j] ;

          upper := ((StrToFloat(StringGrid2.Cells[2, i])+weight_error)) /
            (Volume - volume_error) ;
          lower := ((StrToFloat(StringGrid2.Cells[2, i])-weight_error)) /
            (Volume + volume_error) ;

          if (RadBtn_DirectAddition.Checked = true) and (all_element_targets[j] <> 0) then
          instrumentalError[j] := ((upper - lower) * (100 / all_element_targets[j])) / 2 + instrumentalError[j];

          if (RadBtn_ABSolution.Checked = true) and (all_element_targets[j] <> 0) then
          instrumentalError[j] := ((upper - lower) * (100 / all_element_targets[j])) /
          (2 * StrtoFloat(TxtBox_ConcFactor.Text)) + instrumentalError[j];

          hb_persubstance.Form9.StringGrid1.RowCount := hb_persubstance.Form9.StringGrid1.RowCount + 1 ;

          hb_persubstance.Form9.StringGrid1.Cells[0, hb_persubstance.Form9.StringGrid1.RowCount-1] := (nameSubstance);
          hb_persubstance.Form9.StringGrid1.Cells[1, hb_persubstance.Form9.StringGrid1.RowCount-1] :=(varnames[j]);

          if prev_conc = 'ppm' then

          hb_persubstance.Form9.StringGrid1.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount-1] :=(
            FloattoStr(round2((1 / weight_factor) * weight *
            0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName(
            'Purity').AsFloat / Volume, 3)));

          if prev_conc <> 'ppm' then

          hb_persubstance.Form9.StringGrid1.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount-1] :=(
            FloattoStrF((1/conc_factor[j])*(1 / weight_factor) * weight *
            0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName(
            'Purity').AsFloat / Volume, ffExponent, 4, 2));



        end;

      end;

      StringGrid2.Cells[3,i] := (FloattoStr(
        round2(weight * MyDbf.FieldByName('Cost').AsFloat * 0.001 *
        (1 / weight_factor), 1)));

      end;

      MyDbf.Next;                                     // use .next here NOT .findnext!
    end;

    end;

    MyDbf.Close;
    MyDbf.Free;


    // save results in main page as well
    for j := 1 to 16 do
    begin

    if all_element_targets[j-1] <> 0 then
    grossError[j-1] :=  (Result[j-1] * 100 / all_element_targets[j-1]) - 100 ;

    (FindComponent('RLabel' + IntToStr(j)) as TLabel).Caption := StringGrid1.Cells[1, i];
    StringGrid1.Cells[3, j] := '+/- ' + FloatToStr(Round(instrumentalError[j-1]*10)/10) + '%' ;
    StringGrid1.Cells[2, j] := FloatToStr(Round(grossError[j-1]*10)/10) + '%' ;

    end;


    for i := 1 to 16 do
    begin

      for j := 0 to 15 do

      begin

        if (FindComponent('Label' + IntToStr(i)) as TLabel).Caption = varnames[j] then

        begin


          StringGrid1.Cells[0,i] := (FindComponent('Label' + IntToStr(i)) as TLabel).Caption;

          if prev_conc = 'ppm' then

          begin


          StringGrid1.Cells[1,i] := (FloatToStr(round2(Result[j] + waterquality[i - 1], 3)));

          (FindComponent('RLabel' + IntToStr(i)) as TLabel).Caption :=
            FloatToStr(round2(Result[j] + waterquality[i - 1], 3));

          end ;

          if prev_conc <> 'ppm' then

          begin

          StringGrid1.Cells[1,i] :=(FloatToStrF((1/conc_factor[j])*(Result[j] + waterquality[i - 1]), ffExponent, 4, 2));

          (FindComponent('RLabel' + IntToStr(i)) as TLabel).Caption :=
            FloatToStrF((1/conc_factor[j])*(Result[j] + waterquality[i - 1]), ffExponent,4, 2);

          end;

        end;

      end;

    end;


    predicted_ec := 0;

    for i := 1 to 16 do

    begin

      begin

        predicted_ec := (conc_factor[i-1])*StrtoFloat(
          (FindComponent('RLabel' + IntToStr(i)) as TLabel).Caption) *
          ec_contribution[i - 1] + predicted_ec;

      end;

    end;



    predicted_ec := round2((predicted_ec - 0.35 * predicted_ec) / 1000, 1);

    Panel6.Caption := 'EC=' + FloattoStr(predicted_ec) + ' mS/cm';

    Button10.Enabled := True;

    //determine volume unit for description label

        if RadioButton2.Checked then
          volumeunit := 'gallons';

        if RadioButton3.Checked then
          volumeunit := 'cubic meters';

        if RadioButton1.Checked then
          volumeunit := 'liters';

          Label20.Caption := 'Values calculated for the preparation of ' +
            Edit19.Text + ' ' + volumeunit;


  // total cost calculation

  test := 0;

  for i := 0 to StringGrid2.RowCount - 2 do

  begin

    test := StrtoFloat(StringGrid2.Cells[3,i+1]) + test;

  end;

  Label18.Caption := ('Total Cost is ' + FloattoStr(round2(test, 1)));

  // stock solution analysis

  if (RadBtn_ABSolution.Checked) then
  begin

  for i := 0 to 15 do
  begin

        elementInSolutionA[i] := elementInSolutionA[i] * StrtoFloat(TxtBox_ConcFactor.Text) * 100 / ((Volume/StrtoFloat(TxtBox_ConcFactor.Text)) * 1000000);

        if (varnames[i] <> 'P') and (varnames[i] <> 'K') then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[0, i+ 1] := (varnames[i]);
          hb_stockanalysis.Form8.StringGrid1.Cells[1, i+ 1] := (FloattoStr(round2(elementInSolutionA[i], 5)));
        end;

        if varnames[i] = 'P' then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[0, i+ 1] := ('P2O5');
          hb_stockanalysis.Form8.StringGrid1.Cells[1, i+ 1] := (
            FloattoStr(round2(elementInSolutionA[i] * 2.2915, 3)));
        end;


        if varnames[i] = 'K' then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[0, i+ 1] := ('K2O');
          hb_stockanalysis.Form8.StringGrid1.Cells[1, i+ 1] := (
            FloattoStr(round2(elementInSolutionA[i] * 1.2047, 3)));
        end;


  end;

  for i := 0 to 15 do
  begin

        elementInSolutionB[i] := elementInSolutionB[i] * StrtoFloat(TxtBox_ConcFactor.Text) * 100 / ((Volume/StrtoFloat(TxtBox_ConcFactor.Text)) * 1000000);

        if (varnames[i] <> 'P') and (varnames[i] <> 'K') then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[2, i+ 1] := (FloattoStr(round2(elementInSolutionB[i], 5)));
        end;

        if varnames[i] = 'P' then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[2, i+ 1] := (
            FloattoStr(round2(elementInSolutionB[i] * 2.2915, 3)));
        end;


        if varnames[i] = 'K' then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[2, i+ 1] := (
            FloattoStr(round2(elementInSolutionB[i] * 1.2047, 3)));
        end;

  end;


  end;




   // post ratios based on results posted on listboxes above

    hb_ratios.Form14.StringGrid1.Cells[0, hb_ratios.Form14.StringGrid1.RowCount - 1] :=('N: P: K') ;
    hb_ratios.Form14.StringGrid1.Cells[1, hb_ratios.Form14.StringGrid1.RowCount - 2] :=(getratio('N', 'P', 'K', 3)) ;
    hb_ratios.Form14.StringGrid1.Cells[0, hb_ratios.Form14.StringGrid1.RowCount - 1] :=('N: P2O5: K2O') ;
    hb_ratios.Form14.StringGrid1.Cells[1, hb_ratios.Form14.StringGrid1.RowCount - 2] :=(getratio('N', 'P2O5', 'K2O', 3)) ;
    hb_ratios.Form14.StringGrid1.Cells[0, hb_ratios.Form14.StringGrid1.RowCount - 1] :=('N: K') ;
    hb_ratios.Form14.StringGrid1.Cells[1, hb_ratios.Form14.StringGrid1.RowCount - 2] :=(getratio('N', 'K', 'K', 2) ) ;
    hb_ratios.Form14.StringGrid1.Cells[0, hb_ratios.Form14.StringGrid1.RowCount - 1] :=('N (NO3-): N (NH4+)') ;
    hb_ratios.Form14.StringGrid1.Cells[1, hb_ratios.Form14.StringGrid1.RowCount - 2] :=(getratio('N (NO3-)', 'N (NH4+)', 'K', 2) ) ;
    hb_ratios.Form14.StringGrid1.Cells[0, hb_ratios.Form14.StringGrid1.RowCount - 1] :=('Ca: Mg') ;
    hb_ratios.Form14.StringGrid1.Cells[1, hb_ratios.Form14.StringGrid1.RowCount - 2] :=(getratio('Ca', 'Mg', 'K', 2) ) ;
  end;

procedure TForm1.Button10Click(Sender: TObject);
var
  MyDbf: TDbf;
  i:     integer;
  used_string : string ;
begin

  if RadioButton4.Checked then

  begin

    MyDbf := TDbf.Create(nil);
    MyDbf.FilePathFull := '';
    MyDbf.TableName := 'substances_used.dbf';
    MyDbf.Open;
    MyDbf.Active := True;

    for i := 1 to StringGrid2.RowCount - 1 do

    begin

    used_string := StringGrid2.Cells[0,i] ;

    if RadBtn_ABSolution.checked then
    delete (used_string,1,4);


      MyDbf.Filter := 'Name=' + QuotedStr(used_string);

      MyDbf.Filtered := True;       // This selects the filtered set
      MyDbf.First;

      MyDbf.Edit;

      MyDbf.FieldByName('Weight').AsFloat := StrtoFloat(StringGrid2.Cells[2,i]);

      if RadBtn_ABSolution.checked then
      MyDbf.FieldByName('Weight').AsFloat := StrtoFloat(StringGrid2.Cells[2,i])/StrToFloat(TxtBox_ConcFactor.Text);

      MyDbf.Post;

    end;

    MyDbf.Close;

    MyDbf.Free;

    ShowMessage('Weights have been successfully copied to Database');

  end;

  if RadioButton5.Checked then

  begin

    for i := 1 to 16 do

    begin

      (FindComponent('Edit' + IntToStr(i)) as TEdit).Text :=
        (FindComponent('RLabel' + IntToStr(i)) as TLabel).Caption;

    end;

  end;

end;

procedure TForm1.Button11Click(Sender: TObject);
begin

  PageControl1.ActivePage := TabSheet1;

end;

procedure TForm1.Button12Click(Sender: TObject);
begin

  hb_stockanalysis.Form8.Visible := True;

end;

procedure TForm1.Button13Click(Sender: TObject);
var
  i: integer;
begin

  with TStringList.Create do

    try

      Add(Label20.Caption);

      Add(' , , , ');

      for i := 0 to StringGrid2.RowCount - 1 do

      begin

        Add(StringGrid2.Cells[0,i] + ',' + StringGrid2.Cells[1,i] + ',' + StringGrid2.Cells[2,i] +
          ',' + StringGrid2.Cells[3,i]);

      end;

      Add(' , , , ');

      for i := 0 to StringGrid1.RowCount - 1 do

      begin

        Add(StringGrid1.Cells[0,i] + ',' + StringGrid1.Cells[1,i] + ',' + StringGrid1.Cells[2,i] +
          ',' + StringGrid1.Cells[3,i]);

      end;

      Add(' , , , ');
      Add(Panel6.Caption);

      if SaveDialog1.Execute then
        SaveToFile(SaveDialog1.filename);

    finally

      Free;

    end;

end;

procedure TForm1.Button14Click(Sender: TObject);
begin

  hb_persubstance.Form9.Visible := True;

end;

procedure TForm1.Button15Click(Sender: TObject);
begin

  Edit18.Text := DateTimetoStr(Now);

end;

procedure TForm1.Button16Click(Sender: TObject);
var
  MyDbf: TDbf;
begin

if(datasetname = '') then
begin
ShowMessage('A data set must be selected or created') ;
Exit ;
end ;


  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'datalog.dbf';
  MyDbf.Open;
  MyDbf.Active := True;

  MyDbf.Insert;

  MyDbf.FieldByName('Name').AsString    := datasetname;
  MyDbf.FieldByName('Time').AsDateTime  := StrtoDateTime(Edit18.Text);
  MyDbf.FieldByName('PH1').AsFloat      := StrtoFloat(Edit20.Text);
  MyDbf.FieldByName('EC1').AsFloat      := StrtoFloat(Edit21.Text);
  MyDbf.FieldByName('PH2').AsFloat      := StrtoFloat(Edit22.Text);
  MyDbf.FieldByName('EC2').AsFloat      := StrtoFloat(Edit23.Text);
  MyDbf.FieldByName('Default').AsString := 'NO';

  StringGrid3.RowCount := StringGrid3.RowCount + 1 ;
  StringGrid4.RowCount := StringGrid4.RowCount + 1 ;

  StringGrid3.Cells[0,StringGrid3.RowCount - 1] := (Edit18.Text) ;
  StringGrid3.Cells[1,StringGrid3.RowCount - 1] :=(Edit20.Text) ;
  StringGrid3.Cells[2,StringGrid3.RowCount - 1] :=(Edit21.Text) ;
  StringGrid4.Cells[1,StringGrid4.RowCount - 1] :=(Edit23.Text) ;
  StringGrid4.Cells[0,StringGrid4.RowCount - 1] :=(Edit22.Text) ;

  MyDbf.Post;

  MyDbf.Close;

  MyDbf.Free;

end;

procedure TForm1.Button17Click(Sender: TObject);
var
i : integer ;
ph_array : array of double ;
ec_array : array of double ;
ec_out_array : array of double ;
ph_out_array : array of double ;
Mean : double;
Variance : double;
Skewness : double;
Kurtosis : double;
ADev : double;
begin

hb_analysis.Form11.StringGrid1.Clean ;

Chart1LineSeries1.Clear ;
Chart1LineSeries2.Clear ;
Chart1LineSeries3.Clear ;
Chart1LineSeries4.Clear ;

Chart1.BottomAxis.Marks.Source := Chart1LineSeries1.Source;

// first add the series to the chart

for i:= 1 to StringGrid3.RowCount -1  do

begin

if (CheckBox2.Checked = false) then

   begin
   Chart1LineSeries1.AddXY(StrtoDateTime(StringGrid3.Cells[0,i]), StrtoFloat(StringGrid3.Cells[1,i]), FormatDateTime('dd/mm/yyyy', StrtoDateTime(StringGrid3.Cells[0,i])),clGreen);
   Chart1LineSeries2.AddXY(StrtoDateTime(StringGrid3.Cells[0,i]), StrtoFloat(StringGrid3.Cells[2,i]), FormatDateTime('dd/mm/yyyy', StrtoDateTime(StringGrid3.Cells[0,i])) ,clBlue);
   end;

if (CheckBox2.Checked) then

   begin
   Chart1LineSeries1.AddXY(StrtoDateTime(StringGrid3.Cells[0,i]), StrtoFloat(StringGrid4.Cells[0,i]), FormatDateTime('dd/mm/yyyy', StrtoDateTime(StringGrid3.Cells[0,i])) ,clRed);
   Chart1LineSeries4.AddXY(StrtoDateTime(StringGrid3.Cells[0,i]), StrtoFloat(StringGrid4.Cells[1,i]), FormatDateTime('dd/mm/yyyy', StrtoDateTime(StringGrid3.Cells[0,i])) ,clBlack);
   Chart1LineSeries3.AddXY(StrtoDateTime(StringGrid3.Cells[0,i]), StrtoFloat(StringGrid3.Cells[1,i]), FormatDateTime('dd/mm/yyyy', StrtoDateTime(StringGrid3.Cells[0,i])) ,clGreen);
   Chart1LineSeries2.AddXY(StrtoDateTime(StringGrid3.Cells[0,i]), StrtoFloat(StringGrid3.Cells[2,i]), FormatDateTime('dd/mm/yyyy', StrtoDateTime(StringGrid3.Cells[0,i])) ,clBlue);
   end;

end ;

// now start analyzing data

SetLength(ph_array, StringGrid3.RowCount - 1) ;
SetLength(ec_array, StringGrid3.RowCount - 1) ;
SetLength(ec_out_array, StringGrid3.RowCount - 1) ;
SetLength(ph_out_array, StringGrid3.RowCount - 1) ;




for i :=1 to StringGrid3.RowCount  - 1 do

begin

// get arrays for analysis

ph_array[i] :=  StrtoFloat(StringGrid3.Cells[1,i]) ;
ec_array[i] :=  StrtoFloat(StringGrid3.Cells[2,i]) ;

if  (CheckBox2.Checked) then

  begin

ph_out_array[i] :=  StrtoFloat(StringGrid4.Cells[0,i])- StrtoFloat(StringGrid3.Cells[1,i]) ;
ec_out_array[i] :=  StrtoFloat(StringGrid4.Cells[1,i])- StrtoFloat(StringGrid3.Cells[2,i])  ;

  end;

end ;

CalculateMoments(ph_array, StringGrid3.RowCount  - 1, Mean, Variance, Skewness, Kurtosis) ;

CalculateADev(ph_array, StringGrid3.RowCount  - 1, ADev) ;

hb_analysis.Form11.StringGrid1.Cells[0,1] := ('Mean of pH during recorded period is ');
hb_analysis.Form11.StringGrid1.Cells[0,2] :=('Variance of pH during recorded period is ' );
hb_analysis.Form11.StringGrid1.Cells[0,3] :=('Skewness of pH during recorded period is ' );
hb_analysis.Form11.StringGrid1.Cells[0,4] :=('Kurtosis of pH during recorded period is ' );
hb_analysis.Form11.StringGrid1.Cells[0,5] :=('Average deviation of pH is');

hb_analysis.Form11.StringGrid1.Cells[1,1] := (FloattoStr(round2(Mean, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,2] :=(FloattoStr(round2(Variance, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,3] :=(FloattoStr(round2(Skewness, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,4] :=(FloattoStr(round2(Kurtosis, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,5] :=(FloattoStr(round2(ADev, 2)));

if ADev > 1.5 then
ShowMessage('Your pH is variating too much, you need to better control your pH') ;

if Mean > 7.2 then
ShowMessage('Your pH has been too high, try to add some ammonium to better buffer your pH') ;

if Mean < 4 then
ShowMessage('Your pH has been too low, try adding more nitrate to better buffer your pH and check for bacterial infections') ;

CalculateMoments(ec_array, StringGrid3.RowCount  - 1, Mean, Variance, Skewness, Kurtosis) ;

CalculateADev(ec_array, StringGrid3.RowCount  - 1, ADev) ;

hb_analysis.Form11.StringGrid1.Cells[0,6] := ('Mean of EC during recorded period is ' );
hb_analysis.Form11.StringGrid1.Cells[0,7] := ('Variance of EC during recorded period is ');
hb_analysis.Form11.StringGrid1.Cells[0,8] := ('Skewness of EC during recorded period is ' );
hb_analysis.Form11.StringGrid1.Cells[0,9] := ('Kurtosis of EC during recorded period is ' );
hb_analysis.Form11.StringGrid1.Cells[0,10] := ('Average deviation of EC is ' );

hb_analysis.Form11.StringGrid1.Cells[1,6] :=(FloattoStr(round2(Mean, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,7] :=(FloattoStr(round2(Variance, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,8] :=(FloattoStr(round2(Skewness, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,9] :=(FloattoStr(round2(Kurtosis, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,10] :=(FloattoStr(round2(ADev, 2)));

 if ADev > 0.5 then
ShowMessage('Your EC has been variating too much, you should better control your EC') ;

if Mean > 2 then
ShowMessage('Your EC has been too high ! You might consider using a lower value') ;

if Mean < 0.5 then
ShowMessage('Your EC has been too low, considering raising your EC if you are not during the seedling stage') ;

if CheckBox2.Checked then

   begin

   CalculateMoments(ec_out_array, StringGrid3.RowCount  - 1, Mean, Variance, Skewness, Kurtosis) ;

   CalculateADev(ec_out_array, StringGrid3.RowCount  - 1, ADev) ;

   hb_analysis.Form11.StringGrid1.Cells[0,11] := ('Average of EC difference between In/Out is ' );
   hb_analysis.Form11.StringGrid1.Cells[0,12] :=('Variance of EC difference is ' );
   hb_analysis.Form11.StringGrid1.Cells[0,13] :=('Skewness of EC difference period is ' );
   hb_analysis.Form11.StringGrid1.Cells[0,14] :=('Kurtosis of EC difference period is ' );
   hb_analysis.Form11.StringGrid1.Cells[0,15] :=('Average deviation of EC difference is ' );

   hb_analysis.Form11.StringGrid1.Cells[1,11] :=(FloattoStr(round2(Mean, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,12] :=(FloattoStr(round2(Variance, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,13] :=(FloattoStr(round2(Skewness, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,14] :=(FloattoStr(round2(Kurtosis, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,15] :=(FloattoStr(round2(ADev, 2)));

   if Abs(Mean) > 0.5 then
 ShowMessage('Your EC is dropping too much, you need a more concentrated solution') ;

   if ADev > 0.5 then
ShowMessage('Your plant uptake is varying too much, you might not be adjusting your solution well enough against your crops growth') ;

   CalculateMoments(pH_out_array, StringGrid3.RowCount  - 1, Mean, Variance, Skewness, Kurtosis) ;

   CalculateADev(pH_out_array, StringGrid3.RowCount  - 1, ADev) ;

   hb_analysis.Form11.StringGrid1.Cells[0,16] := ('Average of pH difference between In/Out is ' );
   hb_analysis.Form11.StringGrid1.Cells[0,17] := ('Variance of pH difference is ' );
   hb_analysis.Form11.StringGrid1.Cells[0,18] := ('Skewness of pH difference period is ');
   hb_analysis.Form11.StringGrid1.Cells[0,19] := ('Kurtosis of pH difference period is ' );
   hb_analysis.Form11.StringGrid1.Cells[0,20] := ('Average deviation of pH difference is ');

   hb_analysis.Form11.StringGrid1.Cells[1,16] :=(FloattoStr(round2(Mean, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,17] :=(FloattoStr(round2(Variance, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,18] :=(FloattoStr(round2(Skewness, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,19] :=(FloattoStr(round2(Kurtosis, 2)));
hb_analysis.Form11.StringGrid1.Cells[1,20] :=(FloattoStr(round2(ADev, 2)));

   if Abs(Mean) > 0.5 then
 ShowMessage('Your pH is dropping too much, check for infections within your solution') ;

   if ADev > 0.5 then
ShowMessage('Your pH output is variating too much, you are not adjusting your solution well enough to your plants ion uptake') ;

   end;

hb_analysis.Form11.Visible := true ;


end;

procedure TForm1.Button18Click(Sender: TObject);
  var
MyDbf: TDbf;
begin

if StringGrid3.RowCount = 1 then

   begin

    ShowMessage('Please add at least one data point before setting as default') ;
    Exit ;

    end;

MyDbf := TDbf.Create(nil) ;
MyDbf.FilePathFull := '';
MyDbf.TableName := 'datalog.dbf';
MyDbf.Open             ;
MyDbf.Active := true ;

while not MyDbf.EOF do
    begin

        MyDbf.Edit;

        MyDbf.FieldByName('Default').AsString := 'NO' ;

        MyDbf.Post ;

        MyDbf.next;                                   // use .next here NOT .findnext!
    end;

MyDbf.Filter := 'Name=' + QuotedStr(datasetname) ;

    MyDbf.Filtered := true;       // This selects the filtered set
    MyDbf.First;

    while not MyDbf.EOF do
    begin

    MyDbf.Edit;

              MyDbf.FieldByName('Default').AsString := 'YES' ;

    MyDbf.Post ;

    MyDbf.next;                                   // use .next here NOT .findnext!

    end;

MyDbf.Close ;

MyDbf.Free ;

ShowMessage(datasetname + ' set as default data log set') ;


end;

procedure TForm1.Button19Click(Sender: TObject);
var
MyDbf: TDbf;
i : integer ;
selected_item : integer ;
begin

if selected_cell = '' then // No ítems selected
begin
     ShowMessage('You must select a value on the time column to delete a data point') ;
     Exit;
end;

MyDbf := TDbf.Create(nil) ;
MyDbf.FilePathFull := '';
MyDbf.TableName := 'datalog.dbf';
MyDbf.Open             ;
MyDbf.Active := true ;

For i := 1 to StringGrid3.RowCount - 1 do

         begin


                               if StringGrid3.Cells [0,i] = selected_cell then
                               begin
                                selected_item := i ;
                               end;

         end;


    MyDbf.Filtered := true;       // This selects the filtered set
    MyDbf.First;                  // moves the the first filtered data

    while not MyDbf.EOF do
    begin

    if MyDbf.FieldByName('Time').AsDateTime = StrtoDateTime(StringGrid3.Cells [0,selected_item]) then

    MyDbf.Delete ;

    MyDbf.Next ;

    end;

MyDbf.Close ;

MyDbf.Free ;

For i := 1 to StringGrid3.RowCount - 1 do

         begin


         if i > selected_item then

         begin

         StringGrid3.Cells [0,i-1] := StringGrid3.Cells [0,i] ;
         StringGrid3.Cells [1,i-1] := StringGrid3.Cells [1,i] ;
         StringGrid3.Cells [2,i-1] := StringGrid3.Cells [2,i] ;
         StringGrid4.Cells [0,i-1] := StringGrid4.Cells [0,i] ;
         StringGrid4.Cells [1,i-1] := StringGrid4.Cells [1,i] ;

         end ;

         end;

 StringGrid3.RowCount := StringGrid3.RowCount - 1 ;
 StringGrid4.RowCount := StringGrid4.RowCount - 1 ;

end;

procedure TForm1.getmolarmasses(var molar_mass: array of double) ;
begin

  molar_mass[0] :=  14.007 ;
  molar_mass[1] :=  39.098 ;
  molar_mass[2] :=  30.974 ;
  molar_mass[3] :=  24.305 ;
  molar_mass[4] :=  40.078 ;
  molar_mass[5] :=  32.066 ;
  molar_mass[6] :=  55.845 ;
  molar_mass[7] :=  65.409 ;
  molar_mass[8] :=  10.811 ;
  molar_mass[9] :=  63.546 ;
  molar_mass[10] := 95.94  ;
  molar_mass[11] := 22.990  ;
  molar_mass[12] := 28.086  ;
  molar_mass[13] := 35.453  ;
  molar_mass[14] := 54.938  ;
  molar_mass[15] := 14.007  ;

end ;

procedure TForm1.getequivalents(var equivalents: array of integer);
begin

  equivalents[0] := 1 ;
  equivalents[1] := 1 ;
  equivalents[2] := 3 ;
  equivalents[3] := 2 ;
  equivalents[4] := 2 ;
  equivalents[5] := 2 ;
  equivalents[6] := 2 ;
  equivalents[7] := 2 ;
  equivalents[8] := 1 ;
  equivalents[9] := 2 ;
  equivalents[10] :=2  ;
  equivalents[11] :=1  ;
  equivalents[12] := 2  ;
  equivalents[13] := 2  ;
  equivalents[14] := 2  ;
  equivalents[15] := 1  ;

end;

function TForm1.getratio(first: string; second: string; third: string; items: integer): string ;
var
i: integer ;
j: integer ;
ratio: array[0..2] of double ;
temp : array [0..3] of double ;
names: array[0..3] of string ;
special: array[0..2] of integer ;
begin

hb_ratios.Form14.StringGrid1.RowCount := hb_ratios.Form14.StringGrid1.RowCount + 1 ;

temp[0] := 0 ;
temp[1] := 0 ;
temp[2] := 0 ;
temp[3] := 0 ;

names[0] := first ;
names[1] := second ;
names[2] := third ;

special[0] := -1 ;
special[1] := -1 ;
special[2] := -1 ;

if (items > 3) or
   (items < 2) then
   Result := 'no result' ;

for i := 0 to 3 do

         begin

              if names[i] = 'N' then

               begin

               names[i] := 'N (NO3-)' ;
               names[3]  := 'N (NH4+)' ;
               special[0] := i ;

               end ;

              if names[i] = 'P2O5' then

               begin

               names[i] := 'P' ;
               special[1] := i ;

               end ;

              if names[i] = 'K2O' then

               begin

               names[i] := 'K' ;
               special[2] := i ;

               end ;

         end;

for i:= 1 to 16 do

    begin

    for j := 0 to 3 do

        begin

         if StringGrid1.Cells[0,i] = names[j] then
          temp[j] := StrToFloat(StringGrid1.Cells[1,i]) ;

        end;

    end ;

if (temp[0] > 0) and
   (temp[1] > 0) and
   (temp[2] > 0) then

   begin

if (special[0] <> -1) and
   (names[special[0]] = 'N (NO3-)') then

   begin

   temp[special[0]] := temp[3]+temp[special[0]] ;

   end ;

if (special[1] <> -1) and
      (names[special[1]] = 'P') then

   begin

   temp[special[1]] := temp[special[1]]*2.2915 ;

   end ;

   if (special[2] <> -1) and
         (names[special[2]] = 'K') then

      begin

      temp[special[2]] := temp[special[2]]*1.2047 ;

      end ;

ratio[0] := 1 ;
ratio[1] := round2(temp[1]/temp[0],2) ;
ratio[2] := round2(temp[2]/temp[0],2) ;

if Items = 2 then
Result := FloatToStr(ratio[0]) + ': ' + FloatToStr(ratio[1]) ;

if Items = 3 then
Result := FloatToStr(ratio[0]) + ': ' + FloatToStr(ratio[1]) + ': ' + FloatToStr(ratio[2]) ;

   end;


end;

procedure TForm1.Btn_CalculateClick(Sender: TObject);
var
  MyDbf:  TDbf;
  i:      integer;
  j:      integer;
  k:      integer;
  n:      integer ;
  varcount: integer;
  Volume: double;
  problem_matrix_left: array of array of double;
  problem_matrix_right: array of double;
  array_size: integer;
  answer: integer;
  arraysize: integer;
  name_array: array of array of string;
  report: DenseSolverLSReport;
  solutions: array of double;
  varnames: array of string;
  temp:   array of string;
  temp2:  array of double;
  vartargetvalue: array of double;
  degree_of_freedom: string;
  Result: array of double;
  test:   double;
  gross_error: array of double;
  instrumental_erro: array of double;
  ConcTypeArray: array of string;
  volumeunit: string;
  waterquality: array of double;
  instrumental_error: array of double;
  all_element_contributions : array of array of double ;
  all_element_names : array of string;
  all_element_targets : array of double ;
  preloaded_weight: array of double ;
  upper:  double;
  temp1: double ;
  temp3: double ;
  lower:  double;
  weight_error: double;
  volume_error: double;
  weight_factor: double;
  ec_contribution: array of double;
  molar_mass: array[0..15] of double ;
  cost:   array of double;
  conc_factor: array of double ;
  equivalents: array[0..15] of integer ;
  IsLiquid: array of array of double ;
  predicted_ec: double;
begin

  // clear listbox to get rid of old solutions

  StringGrid1.Clean;
  StringGrid2.Clean;
  StringGrid2.RowCount:= 1;
  StringGrid2.ColWidths[0] := 223;
  StringGrid2.ColWidths[1] := 180;
  StringGrid2.ColWidths[2] := 170;
  StringGrid2.ColWidths[3] := 110;

  //New StringGrid
  //StringGrid_Contribution.Clean;
  StringGrid_Result.Clean;
  StringGrid_Result.RowCount:= 1;
  StringGrid_Result.ColWidths[0] := 150;
  StringGrid_Result.ColWidths[1] := 130;
  StringGrid_Result.ColWidths[2] := 80;
  StringGrid_Result.ColWidths[3] := 60;

  hb_ratios.Form14.StringGrid1.Clean;
  hb_ratios.Form14.StringGrid1.RowCount := 1 ;
  hb_persubstance.Form9.StringGrid1.Clean;
  hb_persubstance.Form9.StringGrid1.RowCount := 1 ;
  hb_stockanalysis.Form8.StringGrid1.Clean ;

  StringGrid_Contribution.Clean;
  StringGrid_Contribution.RowCount := 1 ;


  //clear notebox from previous message
  Form1.Memo1.Lines.Clear;

  // EC parameters

  SetLength(ec_contribution, 16);

  ec_contribution[0]  := 71.46 / 14;
  ec_contribution[1]  := 73 / 39;
  ec_contribution[2]  := 57 / 31;
  ec_contribution[3]  := 106 / 24.30;
  ec_contribution[4]  := 119 / 40;
  ec_contribution[5]  := 160 / 32;
  ec_contribution[6]  := 108.0 / 56;
  ec_contribution[7]  := 0;
  ec_contribution[8]  := 0;
  ec_contribution[9]  := 0;
  ec_contribution[10] := 0;
  ec_contribution[11] := 50.01 / 23;
  ec_contribution[12] := 100 / 28.09;
  ec_contribution[13] := 76.35 / 35.5;
  ec_contribution[14] := 0;
  ec_contribution[15] := 73.5 / 14;

  // define water quality parameters

  SetLength(waterquality, 16);

  waterquality[0]  := StrtoFloat(hb_waterquality.Form6.Edit1.Text);
  waterquality[1]  := StrtoFloat(hb_waterquality.Form6.Edit2.Text);
  waterquality[2]  := StrtoFloat(hb_waterquality.Form6.Edit3.Text);
  waterquality[3]  := StrtoFloat(hb_waterquality.Form6.Edit4.Text);
  waterquality[4]  := StrtoFloat(hb_waterquality.Form6.Edit5.Text);
  waterquality[5]  := StrtoFloat(hb_waterquality.Form6.Edit6.Text);
  waterquality[6]  := StrtoFloat(hb_waterquality.Form6.Edit7.Text);
  waterquality[7]  := StrtoFloat(hb_waterquality.Form6.Edit8.Text);
  waterquality[8]  := StrtoFloat(hb_waterquality.Form6.Edit9.Text);
  waterquality[9]  := StrtoFloat(hb_waterquality.Form6.Edit10.Text);
  waterquality[10] := StrtoFloat(hb_waterquality.Form6.Edit11.Text);
  waterquality[11] := StrtoFloat(hb_waterquality.Form6.Edit12.Text);
  waterquality[12] := StrtoFloat(hb_waterquality.Form6.Edit13.Text);
  waterquality[13] := StrtoFloat(hb_waterquality.Form6.Edit14.Text);
  waterquality[14] := StrtoFloat(hb_waterquality.Form6.Edit15.Text);
  waterquality[15] := StrtoFloat(hb_waterquality.Form6.Edit16.Text);

  // set instrument precision values

  volume_error := StrtoFloat(hb_insprecision.Form7.Edit1.Text) * 0.001;

  weight_error := StrtoFloat(hb_insprecision.Form7.Edit2.Text);

  // set weight factor (g) or (oz)

  if RadioButton8.Checked then
    weight_factor := 1;

  if RadioButton9.Checked then
    weight_factor := 0.0352739619;

  // update list to get matrix size from used substances

  Form1.UpdateSaltList;

  arraysize := Form1.ListBox2.Items.Count;

  // define volume taking into account radio box setting for units
  // the end input volume is always converted to cubic meters
  // which is the unit used within all calculations ppm = g/m3

  // cubic meter
  Volume := StrtoFloat(Edit19.Text);

  // liter conversion
  if Radiobutton1.Checked then
    Volume := Volume / 1000;

  // gallon conversion
  if Radiobutton2.Checked then
    Volume := Volume * 3.78541178 / 1000;

  array_size := Form1.ListBox2.Items.Count;

  varcount := 0;

  // set and define molar mass array (contains molar masses for elements)

  getmolarmasses(molar_mass) ;
  getequivalents(equivalents) ;

  // define concentration conversion factor array

  SetLength(conc_factor, 16) ;

  // set size of string grid for solutions

  StringGrid2.RowCount := arraysize + 1 ;

  StringGrid_Result.RowCount := arraysize + 1 ;


  // set values for the concentration factor according to selected units


  // conversion factor for ppm is 1 for all values (no conversion needed)
  if RadioButton10.Checked then

  begin

  prev_conc := 'ppm' ;

       for i:= 0 to 15 do

       begin

       conc_factor[i] := 1 ;

       end ;

  end ;

  // conversion factor for M (mol/L)
 if RadioButton11.Checked then

  begin

       for i:= 0 to 15 do

       begin

       conc_factor[i] := 1000*molar_mass[i] ;

       end ;

  end ;

 // conversion factor for mM (mmol/L)
if RadioButton12.Checked then

 begin

      for i:= 0 to 15 do

      begin

      conc_factor[i] := molar_mass[i] ;

      end ;

 end;

// conversion factor for mN (meq/L)
if RadioButton13.Checked then

 begin

      for i:= 0 to 15 do

      begin

      conc_factor[i] := molar_mass[i]/equivalents[i] ;

      end ;

 end ;

  // This IF statement controls the type of calculation run
  // according to the radio buttons which control it

  // VERY IMPORTANT IF STATEMENT //
  if RadioButton4.Checked then
    // VERY IMPORTANT IF STATEMENT //
  begin

  // define arrays used to solve the linear equation system

    problem_matrix_left := nil ;

    problem_matrix_right := nil ;

    solutions := nil ;

    name_array := nil ;

    ConcTypeArray := nil ;

    cost := nil ;

    all_element_contributions := nil ;

    all_element_names := nil ;

    all_element_targets := nil ;

    SetLength(preloaded_weight, arraysize) ;

    SetLength(solutions, arraysize);

    SetLength(name_array, arraysize, 2);

    SetLength(ConcTypeArray, arraysize);

    SetLength(cost, arraysize);

    SetLength(IsLiquid, 2, arraysize) ;

    SetLength(all_element_contributions, 16, arraysize);

    SetLength(all_element_names, 16);

    SetLength(all_element_targets, 16);

     // set array to 0

    for i := 0 to arraysize - 1 do
    begin
      for j := 0 to 15 do
      begin
        all_element_contributions[j][i] := 0;

      end;
    end;

    // choose element to use as degree of freedom

    degree_of_freedom := hb_freedom.Form12.ComboBox1.Items[hb_freedom.Form12.ComboBox1.ItemIndex] ;

     // assign all element names to all_element_names array

    for i := 1 to 16 do

    begin

    all_element_names[i - 1] := (FindComponent('Label' + IntToStr(i)) as TLabel).Caption   ;

    if (all_element_names[i - 1] <> 'Si') then
    all_element_targets[i - 1] := (conc_factor[i-1])*StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text ) ;

    if (all_element_names[i - 1] = 'Si') and (ComboBox3.ItemIndex = 0) then
    all_element_targets[i - 1] := (conc_factor[i-1])*StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text ) ;

    if (all_element_names[i - 1] = 'Si') and (ComboBox3.ItemIndex = 1) then
    all_element_targets[i - 1] := 0.4684*(conc_factor[i-1])*StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text ) ;
   ;

    end ;

    // load the database in order to get the weights and find the resulting ppm values

    MyDbf := TDbf.Create(nil);
    MyDbf.FilePathFull := '';
    MyDbf.TableName := 'substances_used.dbf';
    MyDbf.Open;
    MyDbf.Active := True;

    MyDbf.First; // moves to the first data

    i := 0 ;

    while not MyDbf.EOF do
    begin

      for j := 0 to 15 do

      begin


        preloaded_weight[i] :=  (1 / weight_factor) * MyDbf.FieldByName('Weight').AsFloat ;

        all_element_contributions[j][i] :=
        0.01 * MyDbf.FieldByName(all_element_names[j]).AsFloat * MyDbf.FieldByName('Purity').AsFloat / Volume;

      end;

       IsLiquid[0][i] := MyDbf.FieldByName('IsLiquid').AsFloat ;
       IsLiquid[1][i] := MyDbf.FieldByName('Density').AsFloat ;

       if (preloaded_weight[i] > 0)  then
       begin
            Form1.Memo1.Lines.Add('You have selected a fixed weight for ' + MyDbf.FieldByName('Name').AsString + '. The program will find a solution with this constraint but it will add more of this substance if it leads to a better solution');

            {if (ChkBox_DisablePopUp.Checked = false) then
            begin
                 ShowMessage('You have selected a fixed weight for ' + MyDbf.FieldByName('Name').AsString + '. The program will find a solution with this constraint but it will add more of this substance if it leads to a better solution');
            end; }

            if RadBtn_ABSolution.Checked then
            preloaded_weight[i] := preloaded_weight[i]/StrToInt(TxtBox_ConcFactor.Text);

       end;

       i := i + 1;
      MyDbf.Next;// use .next here NOT .findnext!
    end;

    MyDbf.Close;
    MyDbf.Free;

    // define variable count, names and intended values

    j := 0;

    varnames := nil ;
    vartargetvalue  := nil ;
    temp := nil ;
    temp2  := nil ;


    for i := 1 to 16 do
    begin

      if (StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text) > 0) and
        ((FindComponent('Label' + IntToStr(i)) as TLabel).Caption <> degree_of_freedom) then
      begin

        varcount := varcount + 1;

        if j > 0 then
        begin

          for k := 0 to j - 1 do

          begin

            temp[k]  := varnames[k];
            temp2[k] := vartargetvalue[k];

          end;
        end;


        //increase size of arrays to fit new data
        SetLength(varnames, j + 1);
        SetLength(vartargetvalue, j + 1);



        if j > 0 then

        begin

          for k := 0 to j - 1 do

          begin

            varnames[k] := temp[k];
            vartargetvalue[k] := temp2[k];

          end;
        end;

        temp3 := 0 ;

        for n := 0 to arraysize - 1 do

            begin

            temp3 :=  preloaded_weight[n]*all_element_contributions[i- 1][n] + temp3 ;

             end ;

        varnames[j] := (FindComponent('Label' + IntToStr(i)) as TLabel).Caption;

        if (varnames[j] <> 'Si') or (ComboBox3.ItemIndex = 0) then
        vartargetvalue[j] := conc_factor[i-1]*StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text) - waterquality[i - 1] - temp3;

        if (varnames[j] = 'Si') and (ComboBox3.ItemIndex = 1) then
        vartargetvalue[j] := 0.4684*conc_factor[i-1]*StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text) - waterquality[i - 1] - temp3;

        SetLength(temp, j + 1);
        SetLength(temp2, j + 1);

        j := j + 1;

      end;

    end;



    // assign element target values

    for i := 1 to 16 do

    begin

    all_element_targets[i - 1] := conc_factor[i-1]*StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text )  ;

    if (i=13) and (ComboBox3.ItemIndex = 1) then
    all_element_targets[i - 1] := 0.4684*conc_factor[i-1]*StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text )  ;


    end ;

    // definition of arrays which require varcount

       SetLength(problem_matrix_left, varcount, arraysize);

       SetLength(problem_matrix_right, varcount);


    // set array to 0

    for i := 0 to arraysize - 1 do
    begin


      for j := 0 to varcount - 1 do
      begin
        problem_matrix_left[j][i] := 0;

      end;
    end;

    // first get names from substances_used database

    i := 0;

    MyDbf := TDbf.Create(nil);
    MyDbf.FilePathFull := '';
    MyDbf.TableName := 'substances_used.dbf';
    MyDbf.Open;
    MyDbf.Active := True;

    MyDbf.First;                  // moves to the first data

    while not MyDbf.EOF do
    begin
      name_array[i][0] := MyDbf.FieldByName('Name').AsString;
      name_array[i][1] := MyDbf.FieldByName('Formula').AsString;

      // if conditional for when A+B solutions are needed
      if RadBtn_ABSolution.Checked then

      begin

        ConcTypeArray[i] := MyDbf.FieldByName('ConcType').AsString;

        if ConcTypeArray[i] = '0' then

        begin

          Form1.Memo1.Lines.Add('Substance ' + name_array[i][0] +
            ' is incompatible with concentrated solutions');
          Exit;

        end;

      end;

      for j := 0 to varcount - 1 do
      begin

        problem_matrix_left[j][i] :=
          0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName('Purity').AsFloat / Volume;

      end;


      cost[i] := MyDbf.FieldByName('Cost').AsFloat;

      i := i + 1;
      MyDbf.Next;                                     // use .next here NOT .findnext!
    end;

    MyDbf.Close;
    MyDbf.Free;

    // right hand sided of the problem matrix (intended concentrations)

    for j := 0 to varcount - 1 do

    begin

      problem_matrix_right[j] := vartargetvalue[j];

    end;



    // check that there is at least one value for every element being evaluated

    for i := 0 to varcount - 1 do

    begin

      test := 0;

      for j := 0 to arraysize - 1 do

      begin

        test := problem_matrix_left[i][j] + test;

      end;

      if test = 0 then

      begin

        //ShowMessage(
        //  'Error: There must be at least ONE substance containing each element for which a non-zero concentration is desired. No substance is providing ' + varnames[i]);
        Form1.Memo1.Lines.Add('Error: No substance is providing ' + varnames[i]);
        Exit;

      end;

    end;
    // solve equations using the MatrixSoleLS function

    RMatrixSolveLS(problem_matrix_left, varcount, arraysize, problem_matrix_right,
      0.0, answer,
      report, solutions);

    // calculate resulting ppm from solution


    SetLength(Result, 16);
    SetLength(gross_error, 16);
    SetLength(instrumental_error, 16);

    for i := 0 to 15 do

    begin

      test  := 0;
      upper := 0;
      lower := 0;

      for j := 0 to arraysize - 1 do

      begin

        if (solutions[j] > 0)  then

        begin
          test  := solutions[j] * all_element_contributions[i][j] +  preloaded_weight[j]*all_element_contributions[i][j] + test;
          upper := (preloaded_weight[j] + solutions[j] + weight_error) * all_element_contributions[i][j] * Volume /
            (Volume - volume_error) + upper;
          lower := (preloaded_weight[j] + solutions[j] - weight_error) * all_element_contributions[i][j] * Volume /
            (Volume + volume_error) + lower;
        end;

        if (solutions[j] <= 0) and (preloaded_weight[j] > 0)  then

        begin
          test  :=  preloaded_weight[j]*all_element_contributions[i][j] + test;
          upper := (preloaded_weight[j]  + weight_error) * all_element_contributions[i][j] * Volume /
            (Volume - volume_error) + upper;
          lower := (preloaded_weight[j]  - weight_error) * all_element_contributions[i][j] * Volume /
            (Volume + volume_error) + lower;
        end;

      end;

      Result[i] := test;

      if (RadBtn_DirectAddition.Checked = true) and (all_element_targets[i] <> 0) then
        instrumental_error[i] := ((upper - lower) * (100 / all_element_targets[i])) / 2;

      if (RadBtn_ABSolution.Checked = true) and (all_element_targets[i] <> 0) then
        instrumental_error[i] := ((upper - lower) * (100 / all_element_targets[i])) /
          (2 * StrtoFloat(TxtBox_ConcFactor.Text));

      if all_element_targets[i] <> 0 then
      gross_error[i] := (test * 100 / all_element_targets[i]) - 100;


      if   all_element_targets[i] = 0 then
      begin

      instrumental_error[i] := 0 ;
      gross_error[i] := 0 ;

      end ;


    end;

    // warn about values which are not used

    for i := 0 to arraysize - 1 do

    begin

     if (solutions[i] <= 0) and (preloaded_weight[i] <= 0) then

           begin

           //ShowMessage(name_array[i][0] + ' is not used within the final result. Please remove it to obtain a better solution');
           Form1.Memo1.Lines.Add(name_array[i][0] + ' is not used within the final result.');
           end;

    end;


    // post results on listbox


    for i := 0 to arraysize - 1 do

    begin

      if (solutions[i] > 0) then

      begin

        StringGrid2.Cells[1,i+1] := (name_array[i][1]);

        StringGrid_Result.Cells[1,i+1] := (name_array[i][1]);

        //determine volume unit for description label

        if RadioButton2.Checked then
          volumeunit := 'gallons';

        if RadioButton3.Checked then
          volumeunit := 'cubic meters';

        if RadioButton1.Checked then
          volumeunit := 'liters';

        // list additions for "direct addition" calculation type

        if RadBtn_ABSolution.Checked = False then
        begin

          StringGrid2.Cells[0,i+1] := (name_array[i][0]);

          StringGrid_Result.Cells[0,i+1] := (name_array[i][0]);

          if (IsLiquid[0,i] = 0)         or
             (CheckBox6.Checked = false) then
             begin

              StringGrid2.Cells[2,i+1] := (FloatToStr(round2(solutions[i] * weight_factor+ preloaded_weight[i] * weight_factor, 3)) );

              StringGrid_Result.Cells[2,i+1] := (FloatToStr(round2(solutions[i] * weight_factor+ preloaded_weight[i] * weight_factor, 3)) );

             end;

          if (IsLiquid[0,i] = 1)         and
             (CheckBox6.Checked)         then

             begin

             StringGrid2.Cells[2,i+1] := (FloatToStr(round2((1/IsLiquid[1,i])*solutions[i] * weight_factor+ preloaded_weight[i] * weight_factor, 3))+ ' mL');

             StringGrid_Result.Cells[2,i+1] := (FloatToStr(round2((1/IsLiquid[1,i])*solutions[i] * weight_factor+ preloaded_weight[i] * weight_factor, 3))+ ' mL');

             end;

          StringGrid2.Cells[3,i+1] := (FloatToStr(round2(0.001 * solutions[i] * cost[i]+ 0.001*preloaded_weight[i]* cost[i], 1)));

          StringGrid_Result.Cells[3,i+1] := (FloatToStr(round2(0.001 * solutions[i] * cost[i]+ 0.001*preloaded_weight[i]* cost[i], 1)));

          Label20.Caption := 'Values calculated for the preparation of ' +
            Edit19.Text + ' ' + volumeunit;

        end;



        // List additions for A+B calculations

        if RadBtn_ABSolution.Checked = True then

        begin

          StringGrid2.Cells[0,i+1] := (ConcTypeArray[i] + ' - ' + name_array[i][0]);

          StringGrid_Result.Cells[0,i+1] := (ConcTypeArray[i] + ' - ' + name_array[i][0]);

           if (IsLiquid[0,i] = 0)         or
             (CheckBox6.Checked = false) then
             begin
             StringGrid2.Cells[2,i+1] :=(FloatToStr(
              round2(solutions[i] * StrtoFloat(TxtBox_ConcFactor.Text) * weight_factor +preloaded_weight[i]* weight_factor*StrtoFloat(TxtBox_ConcFactor.Text), 3)));

             StringGrid_Result.Cells[2,i+1] :=(FloatToStr(
              round2(solutions[i] * StrtoFloat(TxtBox_ConcFactor.Text) * weight_factor +preloaded_weight[i]* weight_factor*StrtoFloat(TxtBox_ConcFactor.Text), 3)));
             end;

           if (IsLiquid[0,i] = 1)         and
             (CheckBox6.Checked)         then

             begin
               StringGrid2.Cells[2,i+1] :=(FloatToStr(round2((1/IsLiquid[1,i])*StrtoFloat(TxtBox_ConcFactor.Text)*solutions[i] * weight_factor+ preloaded_weight[i] * weight_factor, 3))+ ' mL');

               StringGrid_Result.Cells[2,i+1] :=(FloatToStr(round2((1/IsLiquid[1,i])*StrtoFloat(TxtBox_ConcFactor.Text)*solutions[i] * weight_factor+ preloaded_weight[i] * weight_factor, 3))+ ' mL');
             end;

          StringGrid2.Cells[3,i+1] :=(FloatToStr(
            round2(0.001 * solutions[i] * cost[i] * StrtoFloat(TxtBox_ConcFactor.Text)+0.001*preloaded_weight[i] * cost[i]*StrtoFloat(TxtBox_ConcFactor.Text), 1)));

          StringGrid_Result.Cells[3,i+1] :=(FloatToStr(
            round2(0.001 * solutions[i] * cost[i] * StrtoFloat(TxtBox_ConcFactor.Text)+0.001*preloaded_weight[i] * cost[i]*StrtoFloat(TxtBox_ConcFactor.Text), 1)));

          Label20.Caption := 'Values calculated for the preparation of ' +
            Edit19.Text + ' ' + volumeunit + ' of A and ' + Edit19.Text + ' ' +
            volumeunit + ' of B solution. Please use ' +
            FloatToStr(round2(1000 / StrtoFloat(TxtBox_ConcFactor.Text), 3)) +
            'mL of A and B within every Liter of final solution';

        end;

        end;

        if (solutions[i] <= 0) and (preloaded_weight[i] > 0) then

      begin

        StringGrid2.Cells[1,i+1] := (name_array[i][1]);

        StringGrid_Result.Cells[1,i+1] := (name_array[i][1]);

        //determine volume unit for description label

        if RadioButton2.Checked then
          volumeunit := 'gallons';

        if RadioButton3.Checked then
          volumeunit := 'cubic meters';

        if RadioButton1.Checked then
          volumeunit := 'liters';

        // list additions for "direct addition" calculation type

        if RadBtn_ABSolution.Checked = False then
        begin

          StringGrid2.Cells[0,i+1] := (name_array[i][0]);
          StringGrid2.Cells[2,i+1] := (FloatToStr(round2( preloaded_weight[i], 3)));
          StringGrid2.Cells[3,i+1] :=(FloatToStr(round2(0.001*preloaded_weight[i]* cost[i], 1)));

          StringGrid_Result.Cells[0,i+1] := (name_array[i][0]);
          StringGrid_Result.Cells[2,i+1] := (FloatToStr(round2( preloaded_weight[i], 3)));
          StringGrid_Result.Cells[3,i+1] :=(FloatToStr(round2(0.001*preloaded_weight[i]* cost[i], 1)));

          Label20.Caption := 'Values calculated for the preparation of ' +
            Edit19.Text + ' ' + volumeunit;

        end;

        // List additions for A+B calculations

        if RadBtn_ABSolution.Checked = True then

        begin

          StringGrid2.Cells[0,i+1] :=(ConcTypeArray[i] + ' - ' + name_array[i][0]);

          StringGrid2.Cells[2,i+1] :=(FloatToStr(
            round2(preloaded_weight[i]*StrtoFloat(TxtBox_ConcFactor.Text), 3)));

          StringGrid2.Cells[3,i+1] :=(FloatToStr(
            round2(0.001*preloaded_weight[i] * cost[i]*StrtoFloat(TxtBox_ConcFactor.Text), 1)));

          StringGrid_Result.Cells[0,i+1] :=(ConcTypeArray[i] + ' - ' + name_array[i][0]);

          StringGrid_Result.Cells[2,i+1] :=(FloatToStr(
            round2(preloaded_weight[i]*StrtoFloat(TxtBox_ConcFactor.Text), 3)));

          StringGrid_Result.Cells[3,i+1] :=(FloatToStr(
            round2(0.001*preloaded_weight[i] * cost[i]*StrtoFloat(TxtBox_ConcFactor.Text), 1)));


          Label20.Caption := 'Values calculated for the preparation of ' +
            Edit19.Text + ' ' + volumeunit + ' of A and ' + Edit19.Text + ' ' +
            volumeunit + ' of B solution. Please use ' +
            FloatToStr(round2(1000 / StrtoFloat(TxtBox_ConcFactor.Text), 3)) +
            'mL of A and B within every Liter of final solution';

        end;

      end;

    end;


    for i := 0 to 15 do

    begin

      test := 0;

      StringGrid1.Cells[0,i+1] := all_element_names[i];

      //StringGrid_Contribution.Cells[0,i+1] := all_element_names[i];

      test := waterquality[i];;

      if prev_conc = 'ppm' then
      StringGrid1.Cells[1,i+1] := (FloatToStr(round2((1/conc_factor[i])*(Result[i] + test), 3)));

      //StringGrid_Contribution.Cells[1,i+1] := (FloatToStr(round2((1/conc_factor[i])*(Result[i] + test), 3)));

      if prev_conc <> 'ppm' then
      StringGrid1.Cells[1,i+1] := (FloatToStrF((1/conc_factor[i])*(Result[i] + test), ffExponent, 4, 2));

      StringGrid1.Cells[2,i+1] := (FloatToStr(round2(gross_error[i], 1)) + '%');

      StringGrid1.Cells[3,i+1] :=('+/- ' + FloatToStr(round2(instrumental_error[i], 1)) + '%');

      //StringGrid_Contribution.Cells[1,i+1] := (FloatToStrF((1/conc_factor[i])*(Result[i] + test), ffExponent, 4, 2));

      //StringGrid_Contribution.Cells[2,i+1] := (FloatToStr(round2(gross_error[i], 1)) + '%');

      //StringGrid_Contribution.Cells[3,i+1] :=('+/- ' + FloatToStr(round2(instrumental_error[i], 1)) + '%');


      if prev_conc = 'ppm' then
      (FindComponent('RLabel' + IntToStr(i+1)) as TLabel).Caption := Format('%*.*f', [0, 2, round2((1/conc_factor[i])*Result[i] + test, 3) ]);

      if prev_conc <> 'ppm' then
      (FindComponent('RLabel' + IntToStr(i+1)) as TLabel).Caption := Format('%*.*f', [0, 2, FloattoStrF((1/conc_factor[i])*Result[i] + test, ffExponent, 4, 2) ]);

      if (prev_conc = 'ppm') and (i=12) and (ComboBox3.ItemIndex = 1) then
      (FindComponent('RLabel' + IntToStr(i+1)) as TLabel).Caption := FloattoStr(round2((1/0.4684)*(1/conc_factor[i])*Result[i] + test, 3)) ;

      if (prev_conc <> 'ppm') and (i=12) and (ComboBox3.ItemIndex = 1) then
      (FindComponent('RLabel' + IntToStr(i+1)) as TLabel).Caption := FloattoStrF((1/0.4684)*(1/conc_factor[i])*Result[i] + test, ffExponent, 4, 2) ;

    end;





    // check magnitude of instrumental and gross error

       // check for popup disabling
    if ChkBox_DisablePopUp.Checked = false then

    begin

    for i := 0 to 15 do

    begin

    writeln(all_element_names[i] + ' ' + FloatToStr(gross_error[i]) ) ;


      if (instrumental_error[i] > 100) then
      begin
        {ShowMessage('Instrumental error is too high on ' + all_element_names[i] +
          ', prepare more solution volume or a more concentrated solution to reduce this error');   }
        Form1.Memo1.Lines.Add('Instrumental error is too high on ' + all_element_names[i] +
          ', prepare more solution volume or a more concentrated solution to reduce this error');
      end;

      if (gross_error[i] > 100) then
      begin
        {ShowMessage('Gross errors on ' + all_element_names[i] +
          ' are too high, probably an adequate solution was NOT found. Please try a different substance combination');    }
        Form1.Memo1.Lines.Add('Gross errors on ' + all_element_names[i] +
          ' are too high, probably an adequate solution was NOT found. Please try a different substance combination');
      end;
    end;

    end ;

    // display gross error in the form

    Lbl_Err_NO3.Caption:=Format('%*.*f', [0, 2, gross_error[0]]);
    Lbl_Err_K.Caption:=Format('%*.*f', [0, 2, gross_error[1]]);
    Lbl_Err_P.Caption:=Format('%*.*f', [0, 2, gross_error[2]]);
    Lbl_Err_Mg.Caption:=Format('%*.*f', [0, 2, gross_error[3]]);
    Lbl_Err_Ca.Caption:=Format('%*.*f', [0, 2, gross_error[4]]);
    Lbl_Err_S.Caption:=Format('%*.*f', [0, 2, gross_error[5]]);
    Lbl_Err_Fe.Caption:=Format('%*.*f', [0, 2, gross_error[6]]);
    Lbl_Err_Zn.Caption:=Format('%*.*f', [0, 2, gross_error[7]]);
    Lbl_Err_B.Caption:=Format('%*.*f', [0, 2, gross_error[8]]);
    Lbl_Err_Cu.Caption:=Format('%*.*f', [0, 2, gross_error[9]]);
    Lbl_Err_Mo.Caption:=Format('%*.*f', [0, 2, gross_error[10]]);
    Lbl_Err_Na.Caption:=Format('%*.*f', [0, 2, gross_error[11]]);
    Lbl_Err_Si.Caption:=Format('%*.*f', [0, 2, gross_error[12]]);
    Lbl_Err_Cl.Caption:=Format('%*.*f', [0, 2, gross_error[13]]);
    Lbl_Err_Mn.Caption:=Format('%*.*f', [0, 2, gross_error[14]]);
    Lbl_Err_NH.Caption:=Format('%*.*f', [0, 2, gross_error[15]]);

    Button10.Enabled := True;

    // CALCULATION OF EC


    predicted_ec := 0;

    for i := 1 to 16 do

    begin

      begin

        predicted_ec := conc_factor[i-1]*StrtoFloat(
          (FindComponent('RLabel' + IntToStr(i)) as TLabel).Caption) *
          ec_contribution[i - 1] + predicted_ec;

      end;

    end;

    predicted_ec := round2((predicted_ec - 0.35 * predicted_ec) / 1000, 1);

    Panel6.Caption := 'EC=' + FloattoStr(predicted_ec) + ' mS/cm';

    // analysis of stock solutions

    if RadBtn_ABSolution.Checked then

    begin

      //first analyze A solution

      for i := 0 to 15 do

      begin

        test := 0;

        for j := 0 to arraysize - 1 do

        begin

          if ((solutions[j] > 0) or (preloaded_weight[j] > 0)) and (ConcTypeArray[j] = 'A') then

          begin

            test := preloaded_weight[j]*all_element_contributions[i][j]*Volume + solutions[j] * all_element_contributions[i][j] * Volume + test;

          end;

        end;

        // the 100 is to convert to percentage and the 100,000 to convert cubic meter to mL
        // in order to do the %W/V calculation (g to mL).

        test := test * StrtoFloat(TxtBox_ConcFactor.Text) * 100 / (Volume * 1000000);

        if (all_element_names[i] <> 'P') and (all_element_names[i] <> 'K') then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[0, i+ 1] := (all_element_names[i]);
          hb_stockanalysis.Form8.StringGrid1.Cells[1, i+ 1] := (FloattoStr(round2(test, 5)));
        end;

        if all_element_names[i] = 'P' then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[0, i+ 1] := ('P2O5');
          hb_stockanalysis.Form8.StringGrid1.Cells[1, i+ 1] := (
            FloattoStr(round2(test * 2.2915, 3)));
        end;


        if all_element_names[i] = 'K' then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[0, i+ 1] := ('K2O');
          hb_stockanalysis.Form8.StringGrid1.Cells[1, i+ 1] := (
            FloattoStr(round2(test * 1.2047, 3)));
        end;

      end;

      //now analyze B

      for i := 0 to 15 do

      begin

        test := 0;

        for j := 0 to arraysize - 1 do

        begin

          if ((solutions[j] > 0) or (preloaded_weight[j] > 0)) and (ConcTypeArray[j] = 'B') then

          begin

            test :=  preloaded_weight[j]*all_element_contributions[i][j]*Volume + solutions[j] * all_element_contributions[i][j] * Volume + test;

          end;

        end;

        // the 100 is to convert to percentage and the 100,000 to convert cubic meter to mL
        // in order to do the %W/V calculation (g to mL).

        test := test * StrtoFloat(TxtBox_ConcFactor.Text) * 100 / (Volume * 1000000);

        if (all_element_names[i] <> 'P') and (all_element_names[i] <> 'K') then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[2, i+ 1] := (FloattoStr(round2(test, 5)));
        end;

        if all_element_names[i] = 'P' then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[2, i+ 1] :=(
            FloattoStr(round2(test * 2.2915, 3)));
        end;


        if all_element_names[i] = 'K' then

        begin
          hb_stockanalysis.Form8.StringGrid1.Cells[2, i+ 1] :=(
            FloattoStr(round2(test * 1.2047, 3)));
        end;

      end;

      //activate analysis access button

      Button12.Enabled := True;

    end;

    // carry out detailed analysis for each substance

    for i := 0 to arraysize - 1 do

    begin

      for  j := 0 to 15 do

      begin

        if (all_element_contributions[j][i] > 0) and (solutions[i] > 0) then

        begin

          hb_persubstance.Form9.StringGrid1.RowCount := hb_persubstance.Form9.StringGrid1.RowCount + 1 ;
          hb_persubstance.Form9.StringGrid1.Cells[0, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(name_array[i][1]);
          hb_persubstance.Form9.StringGrid1.Cells[1, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(all_element_names[j]);

          StringGrid_Contribution.RowCount := hb_persubstance.Form9.StringGrid1.RowCount + 1 ;
          StringGrid_Contribution.Cells[0, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(name_array[i][1]);
          StringGrid_Contribution.Cells[1, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(all_element_names[j]);

          temp3 := solutions[i] * all_element_contributions[j][i]+preloaded_weight[i]*all_element_contributions[j][j] ;

           if prev_conc = 'ppm' then
           begin
           hb_persubstance.Form9.StringGrid1.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(
            FloattoStr(round2((1/conc_factor[j])*temp3, 3)));

            StringGrid_Contribution.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(
            FloattoStr(round2((1/conc_factor[j])*temp3, 3)));
           end;

            if prev_conc <> 'ppm' then
            begin
            hb_persubstance.Form9.StringGrid1.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(
            FloattoStrF((1/conc_factor[j])*temp3, ffExponent, 4, 2));
            StringGrid_Contribution.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(
            FloattoStrF((1/conc_factor[j])*temp3, ffExponent, 4, 2));
            end;

        end;

        if (all_element_contributions[j][i] > 0) and (solutions[i] <= 0) and (preloaded_weight[i] > 0) then

        begin

          hb_persubstance.Form9.StringGrid1.RowCount := hb_persubstance.Form9.StringGrid1.RowCount + 1 ;
          hb_persubstance.Form9.StringGrid1.Cells[0, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(name_array[i][1]);
          hb_persubstance.Form9.StringGrid1.Cells[1, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(all_element_names[j]);

          StringGrid_Contribution.RowCount := hb_persubstance.Form9.StringGrid1.RowCount + 1 ;
          StringGrid_Contribution.Cells[0, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(name_array[i][1]);
          StringGrid_Contribution.Cells[1, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(all_element_names[j]);

          temp3 := preloaded_weight[i]*all_element_contributions[j][i] ;

          if prev_conc = 'ppm' then
          begin
          hb_persubstance.Form9.StringGrid1.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(
            FloattoStr(round2((1/conc_factor[j])*temp3, 3)));
          StringGrid_Contribution.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(
            FloattoStr(round2((1/conc_factor[j])*temp3, 3)));
          end;

            if prev_conc <> 'ppm' then
            begin
            hb_persubstance.Form9.StringGrid1.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(
            FloattoStrF((1/conc_factor[j])*temp3, ffExponent, 4, 2));
            StringGrid_Contribution.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount - 1] :=(
            FloattoStrF((1/conc_factor[j])*temp3, ffExponent, 4, 2));
            end;

        end;

      end;

    end;


    // check for basic compatibility problems of stock solutions

    if  RadBtn_ABSolution.Checked then

    begin

        if (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[1, 6]) > 0) and
           (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[1, 5]) > 0)  then
           ShowMessage('Your stock solutions have not been properly designed. Currently there is calcium and sulfate within the same solution (a big problem). Please do NOT carry out this preparation');

        if (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[2, 6]) > 0) and
           (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[2, 5]) > 0)  then
           ShowMessage('Your stock solutions have not been properly designed. Currently there is calcium and sulfate within the same solution (a big problem). Please do NOT carry out this preparation');

         if (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[1, 7]) > 0) and
           (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[1, 6]) > 0)  then
           ShowMessage('Your stock solutions have not been properly designed. To avoid precipitation problems please keep sulfate and iron appart');

          if (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[1, 6]) > 0) and
           (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[1, 7]) > 0)  then
           ShowMessage('Your stock solutions have not been properly designed. To avoid precipitation problems please keep sulfate and iron appart');

          if (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[1, 7]) > 0) and
           (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[1, 3]) > 0)  then
           ShowMessage('Your stock solutions have not been properly designed. To avoid precipitation problems please keep phosphate and iron appart');

          if (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[1, 7]) > 0) and
           (StrtoFloat(hb_stockanalysis.Form8.StringGrid1.Cells[1, 3]) > 0)  then
           ShowMessage('Your stock solutions have not been properly designed. To avoid precipitation problems please keep phosphate and iron appart');

          temp1 :=  0 ;

          for i := 1 to hb_stockanalysis.Form8.StringGrid1.RowCount - 1 do

          begin

          temp1 := StrtoFloat( hb_stockanalysis.Form8.StringGrid1.Cells[1, i]) + temp1 ;

          end ;

          if temp1 > 30 then
          ShowMessage('Your A solution might be too concentrated, please make sure you run solubility tests before preparing any large batches') ;
          Form1.Memo1.Lines.Add('Your A solution might be too concentrated, please make sure you run solubility tests before preparing any large batches') ;

          temp1 :=  0 ;

          for i := 1 to hb_stockanalysis.Form8.StringGrid1.RowCount - 1 do

          begin

          temp1 := StrtoFloat( hb_stockanalysis.Form8.StringGrid1.Cells[1, i]) + temp1 ;

          end ;

          if temp1 > 30 then
          ShowMessage('Your B solution might be too concentrated, please make sure you run solubility tests before preparing any large batches') ;
          Form1.Memo1.Lines.Add('Your B solution might be too concentrated, please make sure you run solubility tests before preparing any large batches') ;


    end ;



    // END OF IMPORTANT IF STATEMENT
  end;
  // END OF IMPORTANT IF STATEMENT

      {

      From here we will be calulating concentrations from the custom masses input for
      each of the salts added to the substances_used database (the ones on the ListBox2 of
      the salt selection form).

      }


  // SECOND IMPORTANT IF STATEMENT
  if RadioButton5.Checked then
    // SECOND IMPORTANT IF STATEMENT

  begin

    varnames := nil ;
    Result := nil ;
    name_array := nil ;

    SetLength(varnames, 16);
    SetLength(Result, 16);
    SetLength(name_array, arraysize, 2);

    for j := 1 to 16 do
    begin

      // load all element names (this time we don't need to discriminate as
      // we simply calculate for everyone
      varnames[j - 1] := (FindComponent('Label' + IntToStr(j)) as TLabel).Caption;

    end;

    // initialize the counter
    i := 0;

    // load the database in order to get the weights and find the resulting ppm values

    MyDbf := TDbf.Create(nil);
    MyDbf.FilePathFull := '';
    MyDbf.TableName := 'substances_used.dbf';
    MyDbf.Open;
    MyDbf.Active := True;

    MyDbf.First;                  // moves to the first data

    while not MyDbf.EOF do
    begin
      name_array[i][0] := MyDbf.FieldByName('Name').AsString;
      name_array[i][1] := MyDbf.FieldByName('Formula').AsString;

      for j := 0 to 15 do

      begin

        // ppm values are very easily calculated using all the information
        // within the DB
        Result[j] := (1 / weight_factor) * MyDbf.FieldByName('Weight').AsFloat *
          0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName(
          'Purity').AsFloat / Volume + Result[j];

        if ((1 / weight_factor) * MyDbf.FieldByName('Weight').AsFloat *
          0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName(
          'Purity').AsFloat / Volume > 0) then

        begin

          hb_persubstance.Form9.StringGrid1.RowCount := hb_persubstance.Form9.StringGrid1.RowCount + 1 ;
          hb_persubstance.Form9.StringGrid1.Cells[0, hb_persubstance.Form9.StringGrid1.RowCount-1] := (name_array[i][1]);
          hb_persubstance.Form9.StringGrid1.Cells[1, hb_persubstance.Form9.StringGrid1.RowCount-1] :=(varnames[j]);

          StringGrid_Contribution.RowCount := hb_persubstance.Form9.StringGrid1.RowCount + 1 ;
          StringGrid_Contribution.Cells[0, hb_persubstance.Form9.StringGrid1.RowCount-1] := (name_array[i][1]);
          StringGrid_Contribution.Cells[1, hb_persubstance.Form9.StringGrid1.RowCount-1] :=(varnames[j]);

          if prev_conc = 'ppm' then
          begin
          hb_persubstance.Form9.StringGrid1.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount-1] :=(
            FloattoStr(round2((1 / weight_factor) * MyDbf.FieldByName('Weight').AsFloat *
            0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName(
            'Purity').AsFloat / Volume, 3)));
          StringGrid_Contribution.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount-1] :=(
            FloattoStr(round2((1 / weight_factor) * MyDbf.FieldByName('Weight').AsFloat *
            0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName(
            'Purity').AsFloat / Volume, 3)));
          end;

          if prev_conc <> 'ppm' then
          begin
          hb_persubstance.Form9.StringGrid1.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount-1] :=(
            FloattoStrF((1/conc_factor[j])*(1 / weight_factor) * MyDbf.FieldByName('Weight').AsFloat *
            0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName(
            'Purity').AsFloat / Volume, ffExponent, 4, 2));
          StringGrid_Contribution.Cells[2, hb_persubstance.Form9.StringGrid1.RowCount-1] :=(
            FloattoStrF((1/conc_factor[j])*(1 / weight_factor) * MyDbf.FieldByName('Weight').AsFloat *
            0.01 * MyDbf.FieldByName(varnames[j]).AsFloat * MyDbf.FieldByName(
            'Purity').AsFloat / Volume, ffExponent, 4, 2));
          end;



        end;

      end;

      StringGrid_Result.RowCount := i+2 ;

      StringGrid_Result.Cells[0,i+1] := (name_array[i][0]);
      StringGrid_Result.Cells[1,i+1] := (name_array[i][1]);
      StringGrid_Result.Cells[3,i+1] := (FloattoStr(
        round2(MyDbf.FieldByName('Weight').AsFloat * MyDbf.FieldByName('Cost').AsFloat * 0.001 *
        (1 / weight_factor), 1)));
      StringGrid_Result.Cells[2,i+1] := (MyDbf.FieldByName('Weight').AsString);


      i := i + 1;
      MyDbf.Next;                                     // use .next here NOT .findnext!
    end;

    MyDbf.Close;
    MyDbf.Free;


    for i := 1 to 16 do
    begin

      for j := 0 to 15 do

      begin

        if (FindComponent('Label' + IntToStr(i)) as TLabel).Caption = varnames[j] then

        begin


          StringGrid1.Cells[0,i] := (FindComponent('Label' + IntToStr(i)) as TLabel).Caption;

          //StringGrid_Contribution.Cells[0,i] := (FindComponent('Label' + IntToStr(i)) as TLabel).Caption;

          if prev_conc = 'ppm' then

          begin


          StringGrid1.Cells[1,i] := (FloatToStr(round2(Result[j] + waterquality[i - 1], 3)));

          //StringGrid_Contribution.Cells[1,i] := (FloatToStr(round2(Result[j] + waterquality[i - 1], 3)));

          (FindComponent('RLabel' + IntToStr(i)) as TLabel).Caption :=
            FloatToStr(round2(Result[j] + waterquality[i - 1], 3));

          end ;

          if prev_conc <> 'ppm' then

          begin

          StringGrid1.Cells[1,i] :=(FloatToStrF((1/conc_factor[j])*(Result[j] + waterquality[i - 1]), ffExponent, 4, 2));

          (FindComponent('RLabel' + IntToStr(i)) as TLabel).Caption :=
            FloatToStrF((1/conc_factor[j])*(Result[j] + waterquality[i - 1]), ffExponent,4, 2);

          end;

        end;

      end;

    end;



    // CALCULATION OF EC


    predicted_ec := 0;

    for i := 1 to 16 do

    begin

      begin

        predicted_ec := (conc_factor[i-1])*StrtoFloat(
          (FindComponent('RLabel' + IntToStr(i)) as TLabel).Caption) *
          ec_contribution[i - 1] + predicted_ec;

      end;

    end;

    predicted_ec := round2((predicted_ec - 0.35 * predicted_ec) / 1000, 1);

    Panel6.Caption := 'EC=' + FloattoStr(predicted_ec) + ' mS/cm';

    Button10.Enabled := True;

    //determine volume unit for description label

        if RadioButton2.Checked then
          volumeunit := 'gallons';

        if RadioButton3.Checked then
          volumeunit := 'cubic meters';

        if RadioButton1.Checked then
          volumeunit := 'liters';

    Label20.Caption := 'Values calculated for the preparation of ' +
            Edit19.Text + ' ' + volumeunit;


    // END OF SECOND IMPORTANT IF STATEMENT
  end;
  // END OF SECOND IMPORTANT IF STATEMENT

  //check and assign any empty elements in StringGrid

  for i := 0 to StringGrid_Result.RowCount - 2 do

  begin

    if (StringGrid_Result.Cells[0,i+1]) = '' then
    begin
    StringGrid_Result.Cells[0,i+1] := name_array[i][0] ;
    StringGrid_Result.Cells[1,i+1] := name_array[i][1] ;
    StringGrid_Result.Cells[2,i+1] := '0' ;
    StringGrid_Result.Cells[3,i+1] := '0' ;
    end;

  end;

  // total cost calculation

  test := 0;

  for i := 0 to StringGrid_Result.RowCount - 2 do

  begin

    test := StrtoFloat(StringGrid_Result.Cells[3,i+1]) + test;

  end;

  Label18.Caption := ('Total Cost is ' + FloattoStr(round2(test, 1)));

   // post ratios based on results posted on listboxes above

    hb_ratios.Form14.StringGrid1.Cells[0, hb_ratios.Form14.StringGrid1.RowCount - 1] :=('N: P: K') ;
    hb_ratios.Form14.StringGrid1.Cells[1, hb_ratios.Form14.StringGrid1.RowCount - 2] :=(getratio('N', 'P', 'K', 3)) ;
    hb_ratios.Form14.StringGrid1.Cells[0, hb_ratios.Form14.StringGrid1.RowCount - 1] :=('N: P2O5: K2O') ;
    hb_ratios.Form14.StringGrid1.Cells[1, hb_ratios.Form14.StringGrid1.RowCount - 2] :=(getratio('N', 'P2O5', 'K2O', 3)) ;
    hb_ratios.Form14.StringGrid1.Cells[0, hb_ratios.Form14.StringGrid1.RowCount - 1] :=('N: K') ;
    hb_ratios.Form14.StringGrid1.Cells[1, hb_ratios.Form14.StringGrid1.RowCount - 2] :=(getratio('N', 'K', 'K', 2) ) ;
    hb_ratios.Form14.StringGrid1.Cells[0, hb_ratios.Form14.StringGrid1.RowCount - 1] :=('N (NO3-): N (NH4+)') ;
    hb_ratios.Form14.StringGrid1.Cells[1, hb_ratios.Form14.StringGrid1.RowCount - 2] :=(getratio('N (NO3-)', 'N (NH4+)', 'K', 2) ) ;
    hb_ratios.Form14.StringGrid1.Cells[0, hb_ratios.Form14.StringGrid1.RowCount - 1] :=('Ca: Mg') ;
    hb_ratios.Form14.StringGrid1.Cells[1, hb_ratios.Form14.StringGrid1.RowCount - 2] :=(getratio('Ca', 'Mg', 'K', 2) ) ;

  if ChkBox_DisablePopUp.Checked = false then
  ShowMessage('Calculation carried out successfully :o)');


end;

procedure TForm1.Button30Click(Sender: TObject);
var
MyDbf: TDbf;
i : integer ;
selected_item : integer ;
begin

MyDbf := TDbf.Create(nil) ;
MyDbf.FilePathFull := '';
MyDbf.TableName := 'substances.dbf';
MyDbf.Open             ;
MyDbf.Active := true ;

if ListBox1.SelCount = 0 then // No ítems selected
     Exit;

For i := 0 to ListBox1.Items.Count - 1 do

         begin
                               if ListBox1.Selected [i] then
                               begin
                                selected_item := i ;
                               end;
         end;

MyDbf.Filter := 'Name=' + QuotedStr(ListBox1.Items[selected_item]) ;

    MyDbf.Filtered := true;       // This selects the filtered set
    MyDbf.First;                  // moves the the first filtered data
    ShowMessage('Deleting ' + MyDbf.FieldByName('Name').AsString + ' from database');
    MyDbf.Delete ;

MyDbf.Close ;

MyDbf.Free ;

ListBox1.Items.Delete(selected_item);

end;

procedure TForm1.Button31Click(Sender: TObject);
var
i : integer ;
selected_item : integer ;
MyDbf: TDbf;
begin

   if ListBox1.SelCount = 0 then // No ítems selected
     Exit;

     For i := 0 to ListBox1.Items.Count - 1 do

         begin
                               if ListBox1.Selected [i] then
                               begin
                                selected_item := i ;
                               end;
         end;

   MyDbf := TDbf.Create(nil) ;
   MyDbf.FilePathFull := '';
   MyDbf.TableName := 'substances.dbf';
   MyDbf.Open             ;
   MyDbf.Active := true ;


         MyDbf.Filter := 'Name=' + QuotedStr(ListBox1.Items[selected_item]) ;

    MyDbf.Filtered := true;       // This selects the filtered set
    MyDbf.First;                  // moves the the first filtered data

    hb_newcustomsalt.Form3.Edit15.text := MyDbf.FieldByName('Name').AsString;
    hb_newcustomsalt.Form3.Edit17.text := MyDbf.FieldByName('Formula').AsString;
    hb_newcustomsalt.Form3.Edit16.text := FloattoStr(MyDbf.FieldByName('Purity').AsFloat*100) ;
    hb_newcustomsalt.Form3.Edit1.text := MyDbf.FieldByName('N (NO3-)').AsString ;
    hb_newcustomsalt.Form3.Edit3.text := MyDbf.FieldByName('P').AsString ;
    hb_newcustomsalt.Form3.Edit2.text := MyDbf.FieldByName('K').AsString ;
    hb_newcustomsalt.Form3.Edit4.text := MyDbf.FieldByName('Mg').AsString ;
    hb_newcustomsalt.Form3.Edit5.text := MyDbf.FieldByName('Ca').AsString ;
    hb_newcustomsalt.Form3.Edit6.text := MyDbf.FieldByName('S').AsString ;
    hb_newcustomsalt.Form3.Edit7.text := MyDbf.FieldByName('Fe').AsString ;
    hb_newcustomsalt.Form3.Edit9.text := MyDbf.FieldByName('B').AsString ;
    hb_newcustomsalt.Form3.Edit8.text := MyDbf.FieldByName('Zn').AsString ;
    hb_newcustomsalt.Form3.Edit10.text := MyDbf.FieldByName('Cu').AsString ;
    hb_newcustomsalt.Form3.Edit11.text := MyDbf.FieldByName('Mo').AsString ;
    hb_newcustomsalt.Form3.Edit12.text := MyDbf.FieldByName('Na').AsString ;
    hb_newcustomsalt.Form3.Edit18.text := MyDbf.FieldByName('Mn').AsString ;
    hb_newcustomsalt.Form3.Edit13.text := MyDbf.FieldByName('Si').AsString ;
    hb_newcustomsalt.Form3.Edit14.text := MyDbf.FieldByName('Cl').AsString ;
    hb_newcustomsalt.Form3.Edit21.text := MyDbf.FieldByName('Cost').AsString ;
    hb_newcustomsalt.Form3.Edit19.text := MyDbf.FieldByName('N (NH4+)').AsString ;
    hb_newcustomsalt.Form3.Edit20.text := MyDbf.FieldByName('ConcType').AsString ;
    hb_newcustomsalt.Form3.Edit22.text := MyDbf.FieldByName('Density').AsString ;

    if MyDbf.FieldByName('IsLiquid').AsInteger = 0 then
    hb_newcustomsalt.Form3.CheckBox2.Checked := false ;

    if MyDbf.FieldByName('IsLiquid').AsInteger = 1 then
    hb_newcustomsalt.Form3.CheckBox2.Checked := true ;

    MyDbf.Close ;

    MyDbf.Free ;

   if hb_newcustomsalt.Form3.Checkbox2.Checked then

   begin

   hb_newcustomsalt.Form3.Edit22.Visible := true ;
   hb_newcustomsalt.Form3.Label22.Visible := true ;
   end;

    if hb_newcustomsalt.Form3.Checkbox2.Checked = false then

   begin

   hb_newcustomsalt.Form3.Edit22.Visible := false ;
   hb_newcustomsalt.Form3.Label22.Visible := false ;
   end;

  hb_newcustomsalt.Form3.Button1.Enabled := False ;

  hb_newcustomsalt.Form3.Button2.Enabled := True;

  hb_newcustomsalt.Form3.Label23.Caption := ListBox1.Items[selected_item] ;

  hb_newcustomsalt.Form3.ComboBox1.ItemIndex := 0;

  hb_newcustomsalt.Form3.ComboBox2.ItemIndex := 0 ;

  hb_newcustomsalt.Form3.ComboBox3.ItemIndex := 0 ;

  hb_newcustomsalt.Form3.Visible := True ;

end;

procedure TForm1.Button32Click(Sender: TObject);
var
i : integer ;
selected_item : integer ;
MyDbf: TDbf;
begin

   if ListBox2.SelCount = 0 then // No ítems selected
     Exit;

     For i := 0 to ListBox2.Items.Count - 1 do

         begin
                               if ListBox2.Selected [i] then
                               begin
                                selected_item := i ;
                               end;
         end;

   MyDbf := TDbf.Create(nil) ;
   MyDbf.FilePathFull := '';
   MyDbf.TableName := 'substances_used.dbf';
   MyDbf.Open             ;
   MyDbf.Active := true ;

    MyDbf.Filter := 'Name=' + QuotedStr(ListBox2.Items[selected_item]) ;

    MyDbf.Filtered := true;       // This selects the filtered set
    MyDbf.First;                  // moves the the first filtered data

    hb_addweight.Form4.Edit1.text := MyDbf.FieldByName('Weight').AsString;

    MyDbf.Close ;

    MyDbf.Free ;


hb_addweight.Form4.Label2.Caption := ListBox2.Items[selected_item] ;

hb_addweight.Form4.Visible := True ;

end;

procedure TForm1.Button33Click(Sender: TObject);
var
i : integer ;
selected_item : integer ;
MyDbf: TDbf;
begin


   MyDbf := TDbf.Create(nil) ;
   MyDbf.FilePathFull := '';
   MyDbf.TableName := 'substances_used.dbf';
   MyDbf.Open             ;
   MyDbf.Active := true ;


    while not MyDbf.EOF do
    begin

    MyDbf.Edit;

    MyDbf.FieldByName('Weight').AsFloat := 0;

    MyDbf.Post;

     MyDbf.Next;

    end;

    MyDbf.Close ;

    MyDbf.Free ;

 ShowMessage('All used substance weights have been reset to zero') ;

end;

procedure TForm1.Button3Click(Sender: TObject);
var

  MyDbf: TDbf;
  oldvalues1: array of array of string;
  oldvalues: array of array of double;
  i: integer;
  j: integer;

begin

  MyDbf := TDbf.Create(nil);
  try
    { use relative path to "data" directory }
    MyDbf.FilePath   := '';
    { we want to use Visual dBase VII compatible tables }
    MyDbf.TableLevel := 7;
    MyDbf.Exclusive  := True;
    MyDbf.TableName  := 'substances.dbf';
    with MyDbf.FieldDefs do
    begin
      Add('Name', ftString, 80, False);
      Add('Formula', ftString, 80, False);
      Add('Purity', ftFloat, 0, False);
      Add('N (NO3-)', ftFloat, 0, False);
      Add('N (NH4+)', ftFloat, 0, False);
      Add('P', ftFloat, 0, False);
      Add('K', ftFloat, 0, False);
      Add('Mg', ftFloat, 0, False);
      Add('Ca', ftFloat, 0, False);
      Add('S', ftFloat, 0, False);
      Add('B', ftFloat, 0, False);
      Add('Fe', ftFloat, 0, False);
      Add('Zn', ftFloat, 0, False);
      Add('Mn', ftFloat, 0, False);
      Add('Cu', ftFloat, 0, False);
      Add('Mo', ftFloat, 0, False);
      Add('Na', ftFloat, 0, False);
      Add('Si', ftFloat, 0, False);
      Add('Cl', ftFloat, 0, False);
      Add('EC', ftFloat, 0, False);
      Add('Cost', ftFloat, 0, False);
      Add('ConcType', ftString, 80, False);
    end;
    MyDbf.CreateTable;
    MyDbf.FieldDefs.Clear;
    MyDbf.Open;
    MyDbf.AddIndex('name', 'Name', [ixCaseInsensitive]);
    MyDbf.AddIndex('formula', 'Formula', [ixCaseInsensitive]);
    MyDbf.Close;
  finally
    MyDbf.Free;
  end;

  SetLength(oldvalues1, 50, 3);
  SetLength(oldvalues, 50, 17);

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances_backup.dbf';
  MyDbf.Open;

  MyDbf.First;

  i := 0;

  while not MyDbf.EOF do
  begin

    oldvalues1[i][0] := MyDbf.FieldByName('Name').AsString;
    oldvalues1[i][1] := MyDbf.FieldByName('Formula').AsString;
    oldvalues1[i][2] := MyDbf.FieldByName('ConcType').AsString;
    oldvalues[i][0]  := MyDbf.FieldByName('Purity').AsFloat;
    ;
    oldvalues[i][1]  := MyDbf.FieldByName('N (NO3-)').AsFloat;
    oldvalues[i][2]  := MyDbf.FieldByName('P').AsFloat;
    oldvalues[i][3]  := MyDbf.FieldByName('K').AsFloat;
    oldvalues[i][4]  := MyDbf.FieldByName('Mg').AsFloat;
    oldvalues[i][5]  := MyDbf.FieldByName('Ca').AsFloat;
    oldvalues[i][6]  := MyDbf.FieldByName('S').AsFloat;
    oldvalues[i][7]  := MyDbf.FieldByName('B').AsFloat;
    oldvalues[i][8]  := MyDbf.FieldByName('Fe').AsFloat;
    oldvalues[i][9]  := MyDbf.FieldByName('Zn').AsFloat;
    oldvalues[i][10] := MyDbf.FieldByName('Cu').AsFloat;
    oldvalues[i][11] := MyDbf.FieldByName('Mo').AsFloat;
    oldvalues[i][12] := MyDbf.FieldByName('Na').AsFloat;
    oldvalues[i][13] := MyDbf.FieldByName('Si').AsFloat;
    oldvalues[i][14] := MyDbf.FieldByName('Cl').AsFloat;
    oldvalues[i][15] := MyDbf.FieldByName('Mn').AsFloat;
    oldvalues[i][16] := MyDbf.FieldByName('N (NH4+)').AsFloat;


    i := i + 1;

    MyDbf.Next;                                     // use .next here NOT .findnext!

  end;

  MyDbf.Close;
  MyDbf.Free;


  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances.dbf';
  MyDbf.Open;

  MyDbf.Active := True;

  for j := 0 to i do

  begin

    MyDbf.Insert;

    MyDbf.FieldByName('Name').AsString := oldvalues1[j][0];
    MyDbf.FieldByName('Formula').AsString := oldvalues1[j][1];
    MyDbf.FieldByName('ConcType').AsString := oldvalues1[j][2];
    MyDbf.FieldByName('Purity').AsFloat := oldvalues[j][0];
    MyDbf.FieldByName('N (NO3-)').AsFloat := oldvalues[j][1];
    MyDbf.FieldByName('P').AsFloat    := oldvalues[j][2];
    MyDbf.FieldByName('K').AsFloat    := oldvalues[j][3];
    MyDbf.FieldByName('Mg').AsFloat   := oldvalues[j][4];
    MyDbf.FieldByName('Ca').AsFloat   := oldvalues[j][5];
    MyDbf.FieldByName('S').AsFloat    := oldvalues[j][6];
    MyDbf.FieldByName('B').AsFloat    := oldvalues[j][7];
    MyDbf.FieldByName('Fe').AsFloat   := oldvalues[j][8];
    MyDbf.FieldByName('Zn').AsFloat   := oldvalues[j][9];
    MyDbf.FieldByName('Cu').AsFloat   := oldvalues[j][10];
    MyDbf.FieldByName('Mo').AsFloat   := oldvalues[j][11];
    MyDbf.FieldByName('Na').AsFloat   := oldvalues[j][12];
    MyDbf.FieldByName('Si').AsFloat   := oldvalues[j][13];
    MyDbf.FieldByName('Cl').AsFloat   := oldvalues[j][14];
    MyDbf.FieldByName('Mn').AsFloat   := oldvalues[j][15];
    MyDbf.FieldByName('N (NH4+)').AsFloat := oldvalues[j][16];
    MyDbf.FieldByName('Cost').AsFloat := 0;
    ;

    MyDbf.Post;

  end;

  MyDbf.Close;
  MyDbf.Free;

end;


procedure TForm1.UpdateDB_formulations;
var

  MyDbf: TDbf;
  values1: array of array of string;
  oldvalues1: array of string;
  values: array of array of double;
  i: integer;
  j: integer;
  n: integer ;
  k: integer ;
  add_to_DB : boolean ;

begin

  SetLength(oldvalues1, 1);
  SetLength(values1, 1, 3);
  SetLength(values, 1, 18);

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'formulations_updated.dbf';
  MyDbf.Open;

  MyDbf.First;

  i := 0;

  while not MyDbf.EOF do
  begin

    values1[i][0] := MyDbf.FieldByName('Name').AsString;
    values1[i][1] := MyDbf.FieldByName('Units').AsString;
    values[i][1]  := MyDbf.FieldByName('N (NO3-)').AsFloat;
    values[i][2]  := MyDbf.FieldByName('P').AsFloat;
    values[i][3]  := MyDbf.FieldByName('K').AsFloat;
    values[i][4]  := MyDbf.FieldByName('Mg').AsFloat;
    values[i][5]  := MyDbf.FieldByName('Ca').AsFloat;
    values[i][6]  := MyDbf.FieldByName('S').AsFloat;
    values[i][7]  := MyDbf.FieldByName('B').AsFloat;
    values[i][8]  := MyDbf.FieldByName('Fe').AsFloat;
    values[i][9]  := MyDbf.FieldByName('Zn').AsFloat;
    values[i][10] := MyDbf.FieldByName('Cu').AsFloat;
    values[i][11] := MyDbf.FieldByName('Mo').AsFloat;
    values[i][12] := MyDbf.FieldByName('Na').AsFloat;
    values[i][13] := MyDbf.FieldByName('Si').AsFloat;
    values[i][14] := MyDbf.FieldByName('Cl').AsFloat;
    values[i][15] := MyDbf.FieldByName('Mn').AsFloat;
    values[i][16] := MyDbf.FieldByName('N (NH4+)').AsFloat;

    SetLength(values1, i+2, 3);
    SetLength(values, i+2, 18);

    i := i + 1;

    MyDbf.Next;                                     // use .next here NOT .findnext!

  end;

  MyDbf.Close;
  MyDbf.Free;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'formulations.dbf';
  MyDbf.Open;

  MyDbf.First;

  n := 0;

  while not MyDbf.EOF do
  begin

    oldvalues1[n] := MyDbf.FieldByName('Name').AsString;

    SetLength(oldvalues1, n+2);
    n := n + 1;

    MyDbf.Next;                                     // use .next here NOT .findnext!

  end;

  MyDbf.Close;
  MyDbf.Free;


  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'formulations.dbf';
  MyDbf.Open;

  MyDbf.Active := True;

  for j := 0 to i do

  begin

    MyDbf.First;

    add_to_db := true ;


    for k := 0 to n do

    begin

      if oldvalues1[k] = values1[j][0] then
      add_to_db := false ;

    end;

    if add_to_DB = true then

    begin

    ShowMessage('New formulation ' + values1[j][0] + ' has been added to the DB');

    MyDbf.Insert;

    MyDbf.FieldByName('Name').AsString := values1[j][0];
    MyDbf.FieldByName('Units').AsString := values1[j][1];
    MyDbf.FieldByName('N (NO3-)').AsFloat := values[j][1];
    MyDbf.FieldByName('P').AsFloat    := values[j][2];
    MyDbf.FieldByName('K').AsFloat    := values[j][3];
    MyDbf.FieldByName('Mg').AsFloat   := values[j][4];
    MyDbf.FieldByName('Ca').AsFloat   := values[j][5];
    MyDbf.FieldByName('S').AsFloat    := values[j][6];
    MyDbf.FieldByName('B').AsFloat    := values[j][7];
    MyDbf.FieldByName('Fe').AsFloat   := values[j][8];
    MyDbf.FieldByName('Zn').AsFloat   := values[j][9];
    MyDbf.FieldByName('Cu').AsFloat   := values[j][10];
    MyDbf.FieldByName('Mo').AsFloat   := values[j][11];
    MyDbf.FieldByName('Na').AsFloat   := values[j][12];
    MyDbf.FieldByName('Si').AsFloat   := values[j][13];
    MyDbf.FieldByName('Cl').AsFloat   := values[j][14];
    MyDbf.FieldByName('Mn').AsFloat   := values[j][15];
    MyDbf.FieldByName('N (NH4+)').AsFloat := values[j][16];

    MyDbf.Post;


    end;

  end;

  MyDbf.Close;
  MyDbf.Free;

end;

procedure TForm1.UpdateDB_substances;
var

  MyDbf: TDbf;
  values1: array of array of string;
  oldvalues1: array of string;
  values: array of array of double;
  i: integer;
  j: integer;
  n: integer ;
  k: integer ;
  update_DB : boolean ;
  add_to_DB : boolean ;

begin

  SetLength(oldvalues1, 1);
  SetLength(values1, 1, 3);
  SetLength(values, 1, 20);

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances_updated.dbf';
  MyDbf.Open;

  MyDbf.First;

  i := 0;

  while not MyDbf.EOF do
  begin

    values1[i][0] := MyDbf.FieldByName('Name').AsString;
    values1[i][1] := MyDbf.FieldByName('Formula').AsString;
    values1[i][2] := MyDbf.FieldByName('ConcType').AsString;
    values[i][0]  := MyDbf.FieldByName('Purity').AsFloat;
    values[i][1]  := MyDbf.FieldByName('N (NO3-)').AsFloat;
    values[i][2]  := MyDbf.FieldByName('P').AsFloat;
    values[i][3]  := MyDbf.FieldByName('K').AsFloat;
    values[i][4]  := MyDbf.FieldByName('Mg').AsFloat;
    values[i][5]  := MyDbf.FieldByName('Ca').AsFloat;
    values[i][6]  := MyDbf.FieldByName('S').AsFloat;
    values[i][7]  := MyDbf.FieldByName('B').AsFloat;
    values[i][8]  := MyDbf.FieldByName('Fe').AsFloat;
    values[i][9]  := MyDbf.FieldByName('Zn').AsFloat;
    values[i][10] := MyDbf.FieldByName('Cu').AsFloat;
    values[i][11] := MyDbf.FieldByName('Mo').AsFloat;
    values[i][12] := MyDbf.FieldByName('Na').AsFloat;
    values[i][13] := MyDbf.FieldByName('Si').AsFloat;
    values[i][14] := MyDbf.FieldByName('Cl').AsFloat;
    values[i][15] := MyDbf.FieldByName('Mn').AsFloat;
    values[i][16] := MyDbf.FieldByName('N (NH4+)').AsFloat;
    values[i][17] := MyDbf.FieldByName('Cost').AsFloat;
    values[i][18] := MyDbf.FieldByName('IsLiquid').AsInteger;
    values[i][19] := MyDbf.FieldByName('Density').AsFloat;

    SetLength(values1, i+2, 3);
    SetLength(values, i+2, 20);

    i := i + 1;

    MyDbf.Next;                                     // use .next here NOT .findnext!

  end;

  MyDbf.Close;
  MyDbf.Free;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances.dbf';
  MyDbf.Open;

  MyDbf.First;

  n := 0;

  while not MyDbf.EOF do
  begin

    oldvalues1[n] := MyDbf.FieldByName('Name').AsString;

    SetLength(oldvalues1, n+2);
    n := n + 1;

    MyDbf.Next;                                     // use .next here NOT .findnext!

  end;

  MyDbf.Close;
  MyDbf.Free;


  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances.dbf';
  MyDbf.Open;

  MyDbf.Active := True;

  for j := 0 to i do

  begin

    MyDbf.First;

    add_to_db := true ;
    update_db := false ;


    for k := 0 to n do

    begin

      if oldvalues1[k] = values1[j][0] then
      add_to_db := false ;

    end;

    if add_to_DB = true then

    begin

    ShowMessage('New substance ' + values1[j][0] + ' has been added to the DB');

    MyDbf.Insert;

    MyDbf.FieldByName('Name').AsString := values1[j][0];
    MyDbf.FieldByName('Formula').AsString := values1[j][1];
    MyDbf.FieldByName('ConcType').AsString := values1[j][2];
    MyDbf.FieldByName('Purity').AsFloat := values[j][0];
    MyDbf.FieldByName('N (NO3-)').AsFloat := values[j][1];
    MyDbf.FieldByName('P').AsFloat    := values[j][2];
    MyDbf.FieldByName('K').AsFloat    := values[j][3];
    MyDbf.FieldByName('Mg').AsFloat   := values[j][4];
    MyDbf.FieldByName('Ca').AsFloat   := values[j][5];
    MyDbf.FieldByName('S').AsFloat    := values[j][6];
    MyDbf.FieldByName('B').AsFloat    := values[j][7];
    MyDbf.FieldByName('Fe').AsFloat   := values[j][8];
    MyDbf.FieldByName('Zn').AsFloat   := values[j][9];
    MyDbf.FieldByName('Cu').AsFloat   := values[j][10];
    MyDbf.FieldByName('Mo').AsFloat   := values[j][11];
    MyDbf.FieldByName('Na').AsFloat   := values[j][12];
    MyDbf.FieldByName('Si').AsFloat   := values[j][13];
    MyDbf.FieldByName('Cl').AsFloat   := values[j][14];
    MyDbf.FieldByName('Mn').AsFloat   := values[j][15];
    MyDbf.FieldByName('N (NH4+)').AsFloat := values[j][16];
    MyDbf.FieldByName('Cost').AsFloat := values[j][17];
    MyDbf.FieldByName('IsLiquid').AsFloat := Round(values[j][18]);
    MyDbf.FieldByName('Density').AsFloat := values[j][19];
    ;

    MyDbf.Post;


    end;

  end;

  MyDbf.Close;
  MyDbf.Free;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'substances.dbf';
  MyDbf.Open;

  MyDbf.Active := True;

  while not MyDbf.EOF do
  begin

     for j := 0 to i do

     begin

     update_db := false ;

     {
     ShowMessage('begin salt') ;
     ShowMessage(MyDbf.FieldByName('Name').AsString) ;
     ShowMessage(FloatToStr(values[j][18])) ;
     ShowMessage(FloatToStr(MyDbf.FieldByName('IsLiquid').AsInteger)) ;
     ShowMessage(FloatToStr(values[j][19])) ;
     ShowMessage(FloatToStr(MyDbf.FieldByName('Density').AsFloat)) ;
     ShowMessage('end salt') ;
     }


     if (MyDbf.FieldByName('Name').AsString = values1[j][0]) and
    (
    (values1[j][1] <> MyDbf.FieldByName('Formula').AsString ) or
    (values1[j][2] <> MyDbf.FieldByName('ConcType').AsString) or
    (values[j][0]  <> MyDbf.FieldByName('Purity').AsFloat) or
    (values[j][1]  <> MyDbf.FieldByName('N (NO3-)').AsFloat) or
    (values[j][2]  <> MyDbf.FieldByName('P').AsFloat) or
    (values[j][3]  <> MyDbf.FieldByName('K').AsFloat) or
    (values[j][4]  <> MyDbf.FieldByName('Mg').AsFloat) or
    (values[j][5]  <> MyDbf.FieldByName('Ca').AsFloat) or
    (values[j][6] <> MyDbf.FieldByName('S').AsFloat) or
    (values[j][7] <> MyDbf.FieldByName('B').AsFloat) or
    (values[j][8]  <> MyDbf.FieldByName('Fe').AsFloat) or
    (values[j][9]  <> MyDbf.FieldByName('Zn').AsFloat) or
    (values[j][10] <> MyDbf.FieldByName('Cu').AsFloat) or
    (values[j][11] <> MyDbf.FieldByName('Mo').AsFloat) or
    (values[j][12] <> MyDbf.FieldByName('Na').AsFloat) or
    (values[j][13] <> MyDbf.FieldByName('Si').AsFloat) or
    (values[j][14] <> MyDbf.FieldByName('Cl').AsFloat) or
    (values[j][15] <> MyDbf.FieldByName('Mn').AsFloat) or
    (values[j][16] <> MyDbf.FieldByName('N (NH4+)').AsFloat) or
    (values[j][18] <> MyDbf.FieldByName('IsLiquid').AsInteger) or
    (values[j][19] <> MyDbf.FieldByName('Density').AsFloat)
    )    then

    begin

    update_db := true ;

    end ;

    if update_DB = true then

    begin

    ShowMessage('Values for substance ' + values1[j][0] + ' have been updated on the DB ');

    MyDbf.Edit;

    MyDbf.FieldByName('Name').AsString := values1[j][0];
    MyDbf.FieldByName('Formula').AsString := values1[j][1];
    MyDbf.FieldByName('ConcType').AsString := values1[j][2];
    MyDbf.FieldByName('Purity').AsFloat := values[j][0];
    MyDbf.FieldByName('N (NO3-)').AsFloat := values[j][1];
    MyDbf.FieldByName('P').AsFloat    := values[j][2];
    MyDbf.FieldByName('K').AsFloat    := values[j][3];
    MyDbf.FieldByName('Mg').AsFloat   := values[j][4];
    MyDbf.FieldByName('Ca').AsFloat   := values[j][5];
    MyDbf.FieldByName('S').AsFloat    := values[j][6];
    MyDbf.FieldByName('B').AsFloat    := values[j][7];
    MyDbf.FieldByName('Fe').AsFloat   := values[j][8];
    MyDbf.FieldByName('Zn').AsFloat   := values[j][9];
    MyDbf.FieldByName('Cu').AsFloat   := values[j][10];
    MyDbf.FieldByName('Mo').AsFloat   := values[j][11];
    MyDbf.FieldByName('Na').AsFloat   := values[j][12];
    MyDbf.FieldByName('Si').AsFloat   := values[j][13];
    MyDbf.FieldByName('Cl').AsFloat   := values[j][14];
    MyDbf.FieldByName('Mn').AsFloat   := values[j][15];
    MyDbf.FieldByName('N (NH4+)').AsFloat := values[j][16];
    MyDbf.FieldByName('IsLiquid').AsInteger := Round(values[j][18]);
    MyDbf.FieldByName('Density').AsFloat := values[j][19];

    MyDbf.Post;

    end;

    end ;

    MyDbf.Next ;

    end ;

  MyDbf.Close;
  MyDbf.Free;

end;


procedure TForm1.Btn_SaveFormulaToDBClick(Sender: TObject);
var
  MyDbf: TDbf;
  responseStr : string;
begin
  responseStr := inputbox('Formula Name', 'Please type the name of the formulation!', 'special formula');

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'formulations.dbf';
  MyDbf.Open;
  MyDbf.Active := True;

  MyDbf.Insert;

  MyDbf.FieldByName('Name').AsString := responseStr;
  MyDbf.FieldByName('P').AsFloat     := StrtoFloat(Edit3.Text);
  MyDbf.FieldByName('K').AsFloat     := StrtoFloat(Edit2.Text);
  MyDbf.FieldByName('N (NO3-)').AsFloat := StrtoFloat(Edit1.Text);
  MyDbf.FieldByName('N (NH4+)').AsFloat := StrtoFloat(Edit16.Text);
  MyDbf.FieldByName('Mg').AsFloat    := StrtoFloat(Edit4.Text);
  MyDbf.FieldByName('Ca').AsFloat    := StrtoFloat(Edit5.Text);
  MyDbf.FieldByName('S').AsFloat     := StrtoFloat(Edit6.Text);
  MyDbf.FieldByName('B').AsFloat     := StrtoFloat(Edit9.Text);
  MyDbf.FieldByName('Fe').AsFloat    := StrtoFloat(Edit7.Text);
  MyDbf.FieldByName('Zn').AsFloat    := StrtoFloat(Edit8.Text);
  MyDbf.FieldByName('Cu').AsFloat    := StrtoFloat(Edit10.Text);
  MyDbf.FieldByName('Mo').AsFloat    := StrtoFloat(Edit11.Text);
  MyDbf.FieldByName('Na').AsFloat    := StrtoFloat(Edit12.Text);
  MyDbf.FieldByName('Si').AsFloat    := StrtoFloat(Edit13.Text);
  MyDbf.FieldByName('Cl').AsFloat    := StrtoFloat(Edit14.Text);
  MyDbf.FieldByName('Mn').AsFloat    := StrtoFloat(Edit15.Text);

  if RadioButton10.Checked then
  MyDbf.FieldByName('Units').AsString := 'ppm' ;

  if RadioButton11.Checked then
  MyDbf.FieldByName('Units').AsString := 'M' ;

  if RadioButton12.Checked then
  MyDbf.FieldByName('Units').AsString := 'mM' ;

  if RadioButton13.Checked then
  MyDbf.FieldByName('Units').AsString := 'mN' ;

  MyDbf.Post;

  MyDbf.Close;

  MyDbf.Free;

  ShowMessage('Formulation named ' + responseStr + ' has been saved to the Database');

  Form1.UpdateComboBox;

  Btn_DeleteFormulaFromDB.Enabled := True;

end;

procedure TForm1.Btn_SaveFormulaToDBResize(Sender: TObject);
begin

end;


procedure TForm1.Button5Click(Sender: TObject);

var
  MyDbf: TDbf;

begin

  MyDbf := TDbf.Create(nil);
  try
    { use relative path to "data" directory }
    MyDbf.FilePath   := '';
    { we want to use Visual dBase VII compatible tables }
    MyDbf.TableLevel := 7;
    MyDbf.Exclusive  := True;
    MyDbf.TableName  := 'datalog.dbf';
    with MyDbf.FieldDefs do
    begin
      Add('Name', ftString, 80, False);
      Add('Time', ftDateTime, 0, False);
      Add('pH1', ftFloat, 0, False);
      Add('pH2', ftFloat, 0, False);
      Add('EC1', ftFloat, 0, False);
      Add('EC2', ftFloat, 0, False);
      Add('Default', ftString, 80, False);
     { Add('Formula', ftString, 80, False);
      Add('Purity', ftFloat, 0, False);
      Add('Cost', ftFloat, 0, False);
      Add('Weight', ftFloat, 0, False);
      Add('N (NO3-)', ftFloat, 0, False);
      Add('P', ftFloat, 0, False);
      Add('K', ftFloat, 0, False);
      Add('Mg', ftFloat, 0, False);
      Add('Ca', ftFloat, 0, False);
      Add('S', ftFloat, 0, False);
      Add('B', ftFloat, 0, False);
      Add('Fe', ftFloat, 0, False);
      Add('Zn', ftFloat, 0, False);
      Add('Cu', ftFloat, 0, False);
      Add('Mo', ftFloat, 0, False);
      Add('Mn', ftFloat, 0, False);
      Add('Na', ftFloat, 0, False);
      Add('Si', ftFloat, 0, False);
      Add('Cl', ftFloat, 0, False);
      Add('N (NH4+)', ftFloat, 0, False);
   //  Add('Default', ftInteger, 0, False);
      Add('EC', ftFloat, 0, False);
      Add('ConcType', ftString, 80, False); }
    end;
    MyDbf.CreateTable;
    MyDbf.FieldDefs.Clear;
    MyDbf.Open;
    MyDbf.AddIndex('name', 'Name', [ixCaseInsensitive]);
    MyDbf.AddIndex('default', 'Default', [ixCaseInsensitive]);
    // MyDbf.AddIndex('formula', 'Formula', [ixCaseInsensitive]);
    MyDbf.Close;
  finally
    MyDbf.Free;
  end;

end;

procedure TForm1.Btn_DeleteFormulaFromDBClick(Sender: TObject);
var
  MyDbf: TDbf;
  i:     integer;
  selected_item: integer;
begin

  if ComboBox1.Text = 'Select formulation from DB' then
  begin
    ShowMessage('Please select a formulation to delete from the drop down menu') ;
    Exit;
  end;

  if ComboBox1.Items.Count = 0 then
    Exit;

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'formulations.dbf';
  MyDbf.Open;
  MyDbf.Active := True;


  MyDbf.Filter := 'Name=' + QuotedStr(ComboBox1.Items[ComboBox1.ItemIndex]);

  MyDbf.Filtered := True;       // This selects the filtered set
  MyDbf.First;                  // moves the the first filtered data
  ComboBox1.Items.Delete(ComboBox1.ItemIndex);
  MyDbf.Delete;

  MyDbf.Close;

  MyDbf.Free;

  if ComboBox1.Items.Count = 0 then

  begin

    ComboBox1.Text  := 'Select formulation from DB';
    Btn_DeleteFormulaFromDB.Enabled := False;

  end;

end;

procedure TForm1.Btn_AddCommFormulaClick(Sender: TObject);
begin
  hb_commercialnutrient.Form5.Visible := True;
end;

procedure TForm1.Btn_SetWtrQualityClick(Sender: TObject);
begin

  hb_waterquality.Form6.Visible := True;

  hb_waterquality.Form6.UpdateComboBox;

  if hb_waterquality.Form6.ComboBox1.Items.Count = 0 then

  begin

    hb_waterquality.Form6.ComboBox1.Text  := 'Select Water Quality Data From DB';
    hb_waterquality.Form6.Button2.Enabled := False;

  end;

end;

procedure TForm1.Btn_SetInstrPrecisionClick(Sender: TObject);
begin

  hb_insprecision.Form7.Visible := True;

end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin

  if CheckBox1.Checked then
  begin

    Button3.Enabled := True;
    Button5.Enabled := True;

  end;

  if CheckBox1.Checked = False then
  begin

    Button3.Enabled := False;
    Button5.Enabled := False;

  end;

end;

procedure TForm1.CheckBox2Change(Sender: TObject);
begin

  if CheckBox2.Checked then

  begin

    StringGrid4.Visible := true ;
    Edit22.Visible := true ;
    Edit23.Visible := true ;
    Label32.Visible := true ;
    Label46.Visible := true ;
    Label50.Visible := false ;
  end;

   if CheckBox2.Checked = false then

  begin

    StringGrid4.Visible := false ;
    Edit22.Visible := false ;
    Edit23.Visible := false ;
    Label32.Visible := false ;
    Label46.Visible := false ;
    Label50.Visible := true ;
  end;

end;

procedure TForm1.setinivalues ;
var
  update_ini : TStringList ;
  answer : array of string ;
begin

  SetLength(answer, 3) ;

  if CheckBox4.Checked then
  answer[0] := 'UPDATE = 1'
  else
  answer[0] := 'UPDATE = 0' ;

  if ChkBox_DisablePopUp.Checked then
  answer[1] := 'POPUP = 1'
  else
  answer[1] := 'POPUP = 0' ;

  if CheckBox5.Checked then
  answer[2] := 'SMALLWINDOW = 1'
  else
  answer[2] := 'SMALLWINDOW = 0' ;

  update_ini :=  TStringList.Create;

  update_ini.Add(answer[0]) ;

  update_ini.Add(answer[1]) ;

  update_ini.Add(answer[2]) ;

  update_ini.SaveToFile('update.ini');

  update_ini.Free ;

end;

procedure TForm1.ChkBox_DisablePopUpChange(Sender: TObject);
begin

  setinivalues;


end;


procedure TForm1.CheckBox4Change(Sender: TObject);
begin

  setinivalues ;

end;

procedure TForm1.CheckBox5Change(Sender: TObject);
begin

  setinivalues ;

end;


procedure TForm1.ComboBox1Select(Sender: TObject);
var
  i:     integer;
  selected_item: integer;
  MyDbf: TDbf;
  Units : string ;
begin

  MyDbf := TDbf.Create(nil);
  MyDbf.FilePathFull := '';
  MyDbf.TableName := 'formulations.dbf';
  MyDbf.Open;
  MyDbf.Active := True;

  MyDbf.Filter := 'Name=' + QuotedStr(ComboBox1.Items[ComboBox1.ItemIndex]);

  MyDbf.Filtered := True;       // This selects the filtered set
  MyDbf.First;                  // moves the the first filtered data

  Units := MyDbf.FieldByName('Units').AsString ;

  if Units = 'ppm' then
  RadioButton10.Checked := true ;

  if Units = 'M' then
  RadioButton11.Checked := true ;

  if Units = 'mM' then
  RadioButton12.Checked := true ;

  if Units = 'mN' then
  RadioButton13.Checked := true ;

  Lbl_FormulaName.Caption := MyDbf.FieldByName('Name').AsString;
  Edit1.Text  := MyDbf.FieldByName('N (NO3-)').AsString;
  Edit3.Text  := MyDbf.FieldByName('P').AsString;
  Edit2.Text  := MyDbf.FieldByName('K').AsString;
  Edit4.Text  := MyDbf.FieldByName('Mg').AsString;
  Edit5.Text  := MyDbf.FieldByName('Ca').AsString;
  Edit6.Text  := MyDbf.FieldByName('S').AsString;
  Edit7.Text  := MyDbf.FieldByName('Fe').AsString;
  Edit9.Text  := MyDbf.FieldByName('B').AsString;
  Edit8.Text  := MyDbf.FieldByName('Zn').AsString;
  Edit10.Text := MyDbf.FieldByName('Cu').AsString;
  Edit11.Text := MyDbf.FieldByName('Mo').AsString;
  Edit12.Text := MyDbf.FieldByName('Na').AsString;
  Edit15.Text := MyDbf.FieldByName('Mn').AsString;
  Edit13.Text := MyDbf.FieldByName('Si').AsString;
  Edit14.Text := MyDbf.FieldByName('Cl').AsString;
  Edit16.Text := MyDbf.FieldByName('N (NH4+)').AsString;


  MyDbf.Close;

  MyDbf.Free;

  Btn_DeleteFormulaFromDB.Enabled := True;

end;

procedure TForm1.ComboBox2Change(Sender: TObject);
var
i : integer ;
selected_item : integer ;
MyDbf: TDbf;
begin

StringGrid4.Clean ;
StringGrid3.Clean ;

StringGrid3.RowCount:= 1 ;
StringGrid4.RowCount := 1 ;

   MyDbf := TDbf.Create(nil) ;
   MyDbf.FilePathFull := '';
   MyDbf.TableName := 'datalog.dbf';
   MyDbf.Open             ;
   MyDbf.Active := true ;

    MyDbf.Filter := 'Name=' + QuotedStr(ComboBox2.Items[ComboBox2.ItemIndex]) ;

    MyDbf.Filtered := true;       // This selects the filtered set
    MyDbf.First;                  // moves the the first filtered data

    datasetname := MyDbf.FieldByName('Name').AsString;

     while not MyDbf.EOF do
  begin

  StringGrid4.RowCount := StringGrid4.RowCount + 1 ;
  StringGrid3.RowCount := StringGrid3.RowCount + 1 ;

    StringGrid3.Cells[0,StringGrid3.RowCount -1] := (MyDbf.FieldByName('Time').AsString) ;
    StringGrid3.Cells[2,StringGrid3.RowCount -1] :=(MyDbf.FieldByName('EC1').AsString) ;
    StringGrid4.Cells[1,StringGrid4.RowCount -1] :=(MyDbf.FieldByName('EC2').AsString) ;
    StringGrid3.Cells[1,StringGrid3.RowCount -1] :=(MyDbf.FieldByName('pH1').AsString) ;
    StringGrid4.Cells[0,StringGrid4.RowCount -1] :=(MyDbf.FieldByName('pH2').AsString) ;
    MyDbf.Next;                                     // use .next here NOT .findnext!
  end;

    MyDbf.Close ;

    MyDbf.Free ;

end;

procedure TForm1.Edit25Change(Sender: TObject);
begin

end;


procedure TForm1.FormWindowStateChange(Sender: TObject);
begin

  If WindowState = wsMaximized then
  begin
  WindowState := wsNormal ;
  ShowMessage('Maximizing is currently not supported due to limitations of the window resizing Lazarus implementations') ;
  end;

end;

procedure TForm1.ListBox1SelectionChange(Sender: TObject; User: boolean);
var
  i : integer ;
  item_selected : boolean ;
begin

item_selected := false ;

for i := 0 to ListBox1.Items.Count - 1 do

    begin

    if (ListBox1.Selected [i]) then
    item_selected := true ;

    end ;

if item_selected then

begin

for i := 0 to ListBox2.Items.Count - 1 do

    begin

    if (ListBox2.Selected [i]) then
    ListBox2.Selected [i] := false ;

    end ;

BtnAddRawSaltForCalc.Enabled := True ;
BtnRemoveSaltFromCalc.Enabled := False ;
Button30.Enabled := True ;
Button31.Enabled := True ;
Button32.Enabled := False ;


end ;


end;

procedure TForm1.ListBox2SelectionChange(Sender: TObject; User: boolean);
var
  i : integer ;
  item_selected : boolean ;
begin


item_selected := false ;

for i := 0 to ListBox2.Items.Count - 1 do

    begin

    if (ListBox2.Selected [i]) then
    item_selected := true ;

    end ;

if item_selected then

begin

for i := 0 to ListBox1.Items.Count - 1 do

    begin

    if (ListBox1.Selected [i]) then
    ListBox1.Selected [i] := false ;

    end ;

BtnAddRawSaltForCalc.Enabled := False ;
BtnRemoveSaltFromCalc.Enabled := True ;
Button30.Enabled := False ;
Button31.Enabled := False ;
Button32.Enabled := True ;

end ;

end;



procedure TForm1.MenuItem2Click(Sender: TObject);
begin

  StringGrid_Result.CopyToClipboard(true);
  StringGrid_Result.CopyToClipboard ;

end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin

end;




procedure TForm1.cleanresults;
var
  i: integer ;
begin

StringGrid1.Clean ;
StringGrid_Result.Clean ;
{
hb_ratios.Form14.StringGrid1.Clean;
hb_persubstance.Form9.StringGrid1.Clean;
hb_stockanalysis.Form8.StringGrid1.Clean;
}

for i := 1 to 16 do
(FindComponent('RLabel' + IntToStr(i)) as TLabel).Caption := '0' ;

end;

procedure TForm1.RadioButton10Change(Sender: TObject);
var
  i: integer ;
  molar_masses : array[0..15] of double ;
  equivalents :  array[0..15] of integer ;
  prev_value : double ;
begin

  Label35.Caption := 'Conc. (ppm)' ;
  Label38.Caption := '(ppm)' ;
  StringGrid1.Cells[1,0] := 'Result (ppm)' ;
  hb_persubstance.Form9.StringGrid1.Cells[2, 0] := 'Contribution (ppm)' ;
  hb_ratios.Form14.StringGrid1.Cells[1, 0] := 'Ratio (ppm: ppm)' ;

  getmolarmasses(molar_masses) ;
  getequivalents(equivalents) ;

  ///////

  if prev_conc = 'mol/L' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(prev_value*molar_masses[i-1]*1000, ffExponent, 4, 2)

  end ;

  end;

  /////

  if prev_conc = 'mmol/L' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(prev_value*molar_masses[i-1], ffExponent, 4, 2)

  end ;

  end;

   ///////

  if prev_conc = 'meq/L' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(prev_value*molar_masses[i-1]/equivalents[i-1], ffExponent, 4, 2)

  end ;


  end;

  prev_conc := 'ppm' ;
  cleanresults ;

end;

procedure TForm1.RadioButton11Change(Sender: TObject);
var
 i: integer ;
  molar_masses : array[0..15] of double ;
  equivalents :  array[0..15] of integer ;
  prev_value : double ;
begin

  Label35.Caption := 'Conc. (mol/L)' ;
  Label38.Caption := '(mol/L)' ;
  StringGrid1.Cells[1,0] := 'Result (mol/L)' ;
  hb_persubstance.Form9.StringGrid1.Cells[2, 0] := 'Contribution (mol/L)' ;
  hb_ratios.Form14.StringGrid1.Cells[1, 0] := 'Ratio (mol/L: mol/L)' ;

  getmolarmasses(molar_masses) ;
  getequivalents(equivalents)  ;

   ///////

  if prev_conc = 'ppm' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF((prev_value/molar_masses[i-1])/1000, ffExponent, 4, 2)

  end ;

  end;

  /////

  if prev_conc = 'mmol/L' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(prev_value/1000, ffExponent, 4, 2)

  end ;

  end;

   ///////

  if prev_conc = 'meq/L' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(0.001*prev_value/equivalents[i-1], ffExponent, 4, 2)

  end ;


  end;

  prev_conc := 'mol/L' ;
  cleanresults ;

end;

procedure TForm1.RadioButton12Change(Sender: TObject);
var
   i: integer ;
  molar_masses : array[0..15] of double ;
  equivalents :  array[0..15] of integer ;
  prev_value : double ;
begin

  Label35.Caption := 'Conc. (mmol/L)' ;
  Label38.Caption := '(mmol/L)' ;
  StringGrid1.Cells[1,0] := 'Result (mmol/L)' ;
  hb_persubstance.Form9.StringGrid1.Cells[2, 0] := 'Contribution (mmol/L)' ;
  hb_ratios.Form14.StringGrid1.Cells[1, 0]  := 'Ratio (mmol/L: mmol/L)' ;

  getmolarmasses(molar_masses) ;
  getequivalents(equivalents) ;

   ///////

  if prev_conc = 'ppm' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(prev_value/molar_masses[i-1], ffExponent, 4, 2)

  end ;

  end;

  /////

  if prev_conc = 'mol/L' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(prev_value*1000, ffExponent, 4, 2)

  end ;

  end;

   ///////

  if prev_conc = 'meq/L' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(prev_value/equivalents[i-1], ffExponent, 4, 2)

  end ;


  end;

  prev_conc := 'mmol/L' ;
  cleanresults ;

end;

procedure TForm1.RadioButton13Change(Sender: TObject);
var
   i: integer ;
  molar_masses : array[0..15] of double ;
  equivalents :  array[0..15] of integer ;
  prev_value : double ;
begin

  Label35.Caption := 'Conc. (meq/L)' ;
  Label38.Caption := '(meq/L)' ;
  StringGrid1.Cells[1,0] := 'Result (meq/L)' ;
  hb_persubstance.Form9.StringGrid1.Cells[2, 0] := 'Contribution (meq/L)' ;
  hb_ratios.Form14.StringGrid1.Cells[1, 0] := 'Ratio (meq/L: meq/L)' ;

  getmolarmasses(molar_masses) ;
  getequivalents(equivalents)  ;

   ///////

  if prev_conc = 'ppm' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(prev_value*equivalents[i-1]/molar_masses[i-1], ffExponent, 4, 2)

  end ;

  end;

  /////

  if prev_conc = 'mmol/L' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(prev_value*equivalents[i-1], ffExponent, 4, 2)

  end ;

  end;

   ///////

  if prev_conc = 'mol/L' then

  begin

  for i := 1 to 16 do

  begin

  prev_value := StrtoFloat((FindComponent('Edit' + IntToStr(i)) as TEdit).Text)  ;

  (FindComponent('Edit' + IntToStr(i)) as TEdit).Text  := FloatToStrF(prev_value*equivalents[i-1]*1000, ffExponent, 4, 2)

  end ;


  end;

  prev_conc := 'meq/L' ;
  cleanresults ;

end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  cleanresults;
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
  cleanresults;
end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
  cleanresults;
end;

procedure TForm1.RadioButton4Change(Sender: TObject);
var
  i: integer;
begin

  if RadioButton4.Checked then

  begin

    Button10.Caption := 'Copy Weight Results to DB';
    Button10.Enabled   := False;
    Button12.Enabled   := False;

    for i := 1 to 16 do

    begin

      (FindComponent('Edit' + IntToStr(i)) as TEdit).Enabled := True;
      Panel2.Enabled := True;

    end;

  end;

  cleanresults;

end;

procedure TForm1.RadioButton5Change(Sender: TObject);
var
  i: integer;
begin

  if RadioButton5.Checked then

  begin

    Button10.Caption := 'Copy ppm results to formulation';
    Button10.Enabled := False;
    Button12.Enabled := False;

    for i := 1 to 16 do

    begin

      (FindComponent('Edit' + IntToStr(i)) as TEdit).Enabled := False;
      RadBtn_DirectAddition.Checked := True;
      Panel2.Enabled := False;

    end;

  end;

  cleanresults;

end;

procedure TForm1.RadBtn_ABSolutionChange(Sender: TObject);
begin

  Label17.Caption := 'Stock solution volume';
  TxtBox_ConcFactor.Enabled  := True;
  cleanresults;

end;

procedure TForm1.RadBtn_DirectAdditionChange(Sender: TObject);
begin

  Label17.Caption := 'Volume';
  TxtBox_ConcFactor.Enabled  := False;
  cleanresults;

end;

procedure TForm1.RadioButton8Change(Sender: TObject);
begin

  StringGrid_Result.Cells[2,0]  := 'Mass (g)';
  hb_addweight.Form4.Label1.Caption := 'Mass of Substance Used (g)';
  cleanresults;

end;

procedure TForm1.RadioButton9Change(Sender: TObject);
begin

  StringGrid_Result.Cells[2,0]  := 'Mass (oz)';
  hb_addweight.Form4.Label1.Caption := 'Mass of Substance Used (oz)';
  cleanresults;

end;

procedure TForm1.BtnRemoveSaltFromCalcClick(Sender: TObject);
var
MyDbf: TDbf;
i : integer ;
selected_item : integer ;
begin

if ListBox2.SelCount = 0 then // No ítems selected
     Exit;

MyDbf := TDbf.Create(nil) ;
MyDbf.FilePathFull := '';
MyDbf.TableName := 'substances_used.dbf';
MyDbf.Open             ;
MyDbf.Active := true ;

For i := 0 to ListBox2.Items.Count - 1 do

         begin
                               if ListBox2.Selected [i] then
                               begin
                                selected_item := i ;
                               end;
         end;

MyDbf.Filter := 'Name=' + QuotedStr(ListBox2.Items[selected_item]) ;

    MyDbf.Filtered := true;       // This selects the filtered set
    MyDbf.First;                  // moves the the first filtered data
    ListBox1.Items.Add(MyDbf.FieldByName('Name').AsString) ;
    MyDbf.Delete ;

MyDbf.Close ;

MyDbf.Free ;

HB_Main.Form1.Button10.Enabled := false ;

ListBox2.Items.Delete(selected_item);


end;







//procedure TForm1.StringGrid_ResultEditingDone(Sender: TObject);
//begin
//  weightFineTunning;
//end;

procedure TForm1.StringGrid3SelectCell(Sender: TObject; aCol, aRow: Integer;
  var CanSelect: Boolean);
begin

selected_cell := StringGrid3.Cells[StringGrid3.Col, StringGrid3.Row] ;

end;

procedure TForm1.TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure TForm1.ToggleBox1Change(Sender: TObject);
begin
  hb_datasetname.Form10.Visible := true;
end;





initialization
  {$I hb_main.lrs}

end.

