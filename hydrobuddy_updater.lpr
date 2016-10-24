program hydrobuddy_updater;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp, zipper, HTTPsend
  { you can add units after this };

type

  { Update }

  Update = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
  end;

{ Update }

procedure Update.DoRun;
var
  ErrorMsg: String;
begin
  // quick check parameters
  ErrorMsg:=CheckOptions('h','help');
  if ErrorMsg<>'' then begin
    ShowException(Exception.Create(ErrorMsg));
    Terminate;
    Exit;
  end;

  // parse parameters
  if HasOption('h','help') then begin
    WriteHelp;
    Terminate;
    Exit;
  end;

  { add your program here }

  // stop program loop
  Terminate;
end;

constructor Update.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor Update.Destroy;
begin
  inherited Destroy;
end;

procedure Update.WriteHelp;
begin
  { add your help code here }
  writeln('Usage: ',ExeName,' -h');
end;

procedure DownloadFile(const Url, PathToSaveTo: string);
var
fs : TFileStream ;
begin
   fs := TFileStream.Create(PathToSaveTo, fmOpenWrite or fmCreate);
   try

     WriteLn('Do NOT run HydroBuddy until the update is done. Downloading...(please be patient as this may take a while)');

     HttpGetBinary(Url, fs);

   finally
      fs.Free;
   end;
end;

procedure CheckUpdate ;
var
version : TStringList ;
UnZipper: TUnZipper;
begin

  sleep(10000) ;

  version := TStringList.Create;

if FileExists(  'latestversion.txt' ) then

begin

  version.LoadFromFile( 'latestversion.txt') ;

  if FileExists( version[1] ) = false then
  DownloadFile('http://entirely4you.com/' + version[1], version[1]) ;

  UnZipper := TUnZipper.Create;
  try
    UnZipper.FileName := version[1];
    UnZipper.OutputPath := '';
    UnZipper.Examine;
    UnZipper.UnZipAllFiles;
  finally
    UnZipper.Free;

  end;

end ;

if FileExists(  'latestversion.txt' ) = false then

begin

WriteLn('Sorry, the file with update data was not found. Please run HydroBuddy to get it !');


end ;

   version.Free

  end;


var
  Application: Update;

{$R *.res}

begin
  Application:=Update.Create(nil);
  CheckUpdate ;
  Application.Run;
  Application.Free;
end.

