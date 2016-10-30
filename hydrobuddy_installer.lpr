program hydrobuddy_installer;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, hb_installer_main
  { you can add units after this };

{$R *.res}

procedure setActiveSheet;
begin
    Form1.PageControl1.ActivePage:= Form1.TabSheet4;
end;

begin
  Application.Title:='HydroBuddy Installer';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  setActiveSheet;
  Application.Run;
end.

