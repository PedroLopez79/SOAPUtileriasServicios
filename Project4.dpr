program Project4;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FormUnit1 in 'FormUnit1.pas' {Form1},
  WebModuleUnit4 in 'WebModuleUnit4.pas' {WebModule4: TWebModule},
  androidserviceImpl in 'androidserviceImpl.pas',
  androidserviceIntf in 'androidserviceIntf.pas',
  uDM in 'uDM.pas' {DM: TDataModule},
  UtileriasComun in 'UtileriasComun.pas',
  LibraryEmpresas_Intf in 'LibraryEmpresas_Intf.pas',
  LibXmlParser in 'LibXmlParser.pas',
  ufrmPassword in 'ufrmPassword.pas' {frmPassword};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
