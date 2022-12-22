; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "dotNETCalculator"
#define MyAppVersion "0.1.0.6"
#define MyAppPublisher "AlperAkca79"
#define MyAppURL "https://alperakca79.github.io/dotNETCalculator/"
#define MyAppExeName "dotNETCalculator.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7541F652-9BA5-4BCC-8198-0B4157CA1063}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=F:\Visual Studio Work Space\C#\dotNETCalculator\LICENSE
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=F:\Visual Studio Work Space\C#\dotNETCalculator\dotNETCalculator.Installer
OutputBaseFilename=dotNETCalculator_setup-arm
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "F:\Visual Studio Work Space\C#\dotNETCalculator\dotNETCalculator\bin\Release\net6.0-windows\win-arm\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Visual Studio Work Space\C#\dotNETCalculator\dotNETCalculator\bin\Release\net6.0-windows\win-arm\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

