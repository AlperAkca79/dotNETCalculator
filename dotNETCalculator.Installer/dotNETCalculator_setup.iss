; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName ".NET Calculator"
#define MyAppVersion "0.1.0.1"
#define MyAppPublisher "AlperAkca79"
#define MyAppURL "https://alperakca79.github.io/dotNETCalculator/"
#define MyAppExeName "dotNETCalculator.exe"
#define MyAppAssocName MyAppName + ""
#define MyAppAssocExt ".msi"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4F513BB2-1DD3-4849-984D-D67CE03C05A0}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=C:\Users\alper\OneDrive\Masa�st�\LICENSE.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\alper\Source\Repos\dotNETCalculator\dotNETCalculator.Installer
OutputBaseFilename=dotNETCalculator_setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\alper\Source\Repos\dotNETCalculator\dotNETCalculator\bin\Release\net6.0-windows\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\alper\OneDrive\Masa�st�\LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\alper\Source\Repos\dotNETCalculator\dotNETCalculator\dotNETCalculator-blue-50x50.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\alper\Source\Repos\dotNETCalculator\dotNETCalculator\bin\Release\net6.0-windows\ref\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\alper\Source\Repos\dotNETCalculator\dotNETCalculator\bin\Release\net6.0-windows\dotNETCalculator.deps.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\alper\Source\Repos\dotNETCalculator\dotNETCalculator\bin\Release\net6.0-windows\dotNETCalculator.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\alper\Source\Repos\dotNETCalculator\dotNETCalculator\bin\Release\net6.0-windows\dotNETCalculator.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\alper\Source\Repos\dotNETCalculator\dotNETCalculator\bin\Release\net6.0-windows\dotNETCalculator.runtimeconfig.dev.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\alper\Source\Repos\dotNETCalculator\dotNETCalculator\bin\Release\net6.0-windows\dotNETCalculator.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

