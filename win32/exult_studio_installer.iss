; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Exult Studio
AppVerName=Exult Studio Git
AppPublisher=The Exult Team
AppPublisherURL=http://exult.sourceforge.net/
AppSupportURL=http://exult.sourceforge.net/
AppUpdatesURL=http://exult.sourceforge.net/
; Setup exe version number:
VersionInfoVersion=1.7.0
DisableDirPage=no
DefaultDirName={autopf}\Exult
DisableProgramGroupPage=no
DefaultGroupName=Exult Studio
OutputBaseFilename=ExultStudio
Compression=lzma
SolidCompression=yes
InternalCompressLevel=max
AppendDefaultDirName=false
AllowNoIcons=true
OutputDir=.
DirExistsWarning=no
AlwaysUsePersonalGroup=true
DisableWelcomePage=no
WizardStyle=modern

[Files]
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: Exult\COPYING.txt; DestDir: {app}; Flags: onlyifdoesntexist
Source: Exult\AUTHORS.txt; DestDir: {app}; Flags: onlyifdoesntexist
Source: Studio\images\*.gif; DestDir: {app}\images\; Flags: ignoreversion
Source: Studio\images\*.png; DestDir: {app}\images\; Flags: ignoreversion
Source: Studio\exult_studio.exe; DestDir: {app}; Flags: ignoreversion
Source: Studio\exult_studio.html; DestDir: {app}; Flags: ignoreversion
Source: Studio\exult_studio.txt; DestDir: {app}; Flags: ignoreversion
Source: Studio\*.dll; DestDir: {app}; Flags: ignoreversion
Source: Studio\lib\*; DestDir: {app}\lib\; Flags: ignoreversion recursesubdirs
Source: Studio\share\*; DestDir: {app}\share\; Flags: ignoreversion recursesubdirs
Source: Studio\data\estudio\new\*.flx; DestDir: {app}\data\estudio\new; Flags: ignoreversion
Source: Studio\data\estudio\new\*.vga; DestDir: {app}\data\estudio\new; Flags: ignoreversion
Source: Studio\data\estudio\new\*.shp; DestDir: {app}\data\estudio\new; Flags: ignoreversion
Source: Studio\data\estudio\new\blends.dat; DestDir: {app}\data\estudio\new; Flags: ignoreversion
Source: Studio\data\exult_studio.glade; DestDir: {app}\data\; Flags: ignoreversion

[Icons]
Name: {group}\Exult Studio; Filename: {app}\exult_studio.exe; WorkingDir: {app}
Name: {group}\{cm:UninstallProgram,Exult Studio}; Filename: {uninstallexe}
Name: {group}\exult_studio.html; Filename: {app}\exult_studio.html; WorkingDir: {app}; Comment: exult_studio.html; Flags: createonlyiffileexists
; Name: {group}\exult_studio.txt; Filename: {app}\exult_studio.txt; WorkingDir: {app}; Comment: exult_studio.txt; Flags: createonlyiffileexists

[Run]
Filename: {app}\exult_studio.exe; Description: {cm:LaunchProgram,Exult Studio}; Flags: nowait postinstall skipifsilent

[Dirs]
Name: {app}\images
Name: {app}\data
; Name: {app}\lib
; Name: {app}\etc
