@ECHO off
TITLE Window  �Ż���������


set TempFile_Name=%SystemRoot%\System32\BatTestUACin_SysRt%Random%.batemp
( echo "BAT Test UAC in Temp" >%TempFile_Name% ) 1>nul 2>nul
if exist %TempFile_Name% (
del %TempFile_Name% 1>nul 2>nul
GOTO Page 2
) else (
GOTO admin
)

:Page 2
CLS
COLOR 2f
MODE con: COLS=70 LINES=20
ECHO.
ECHO ====================================================================#
ECHO                              Windows  ����    
ECHO    #++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
ECHO.
ECHO    # 01��ȥ����ݷ�ʽС��ͷ          # 02��ȥ��UACС����
ECHO    # 03�������쳣�޸�                # 04����������
ECHO    # 05��ϵͳ����(�鿴)              # 06��ϵͳ����(�鿴)
ECHO    # 07����ֹwindow���ʹ��󱨸�      # 08���ر�Windows Defender
ECHO    # 09���رշ���ǽ                  # 10�������¶����Զ����ظ���  
ECHO    # 11���ر��Զ����Ż��Զ���U��   # 12����������ʾ�����ڼ���  
ECHO    # 13��Win11�ɰ��Ҽ��˵�������
ECHO. 
ECHO    #-----------------------------------------------------------------#
ECHO                                                        ����2�����ҳ #
ECHO                                                        ����3������ҳ #
ECHO    #+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
ECHO ======================================================================

set /p cp=.            �����������Ų��س�������07����
if %cp%==01 goto lnk
if %cp%==02 goto uacico
if %cp%==03 goto Network
if %cp%==04 goto LJmenu
if %cp%==05 goto activation
if %cp%==06 goto configure
if %cp%==07 goto report
if %cp%==08 goto Defender
if %cp%==09 goto firewall
if %cp%==10 goto update
if %cp%==11 goto autoUSB
if %cp%==12 goto week
if %cp%==13 goto Win11
if %cp%==2 goto  application
if %cp%==3 goto  wenjianjia
if %cp%==exit exit
goto cho

:lnk
CLS
MODE con: COLS=40 LINES=15
ECHO.
ECHO.
ECHO    **********************************
ECHO.
ECHO        ȥ����ݷ�ʽС��ͷ�ͺ�׺
ECHO.
ECHO                1.ִ��
ECHO.
ECHO                2.�ָ�
ECHO.
ECHO    **********************************
ECHO.
ECHO.
Choice /C 12 /N /M ѡ��1��2����
If ErrorLevel 1 If Not ErrorLevel 2 Goto lnk1
If ErrorLevel 2 If Not ErrorLevel 3 Goto lnk2

:lnk1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v link /d "00000000" /t REG_BINARY /f
del "%userprofile%\AppData\Local\iconcache.db" /f /q
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:lnk2
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v link /f
del "%userprofile%\AppData\Local\iconcache.db" /f /q
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:uacico
CLS
MODE con: COLS=40 LINES=15
ECHO.
ECHO.
ECHO    **********************************
ECHO.
ECHO             ȥ��UACС����
ECHO.
ECHO                1.ִ��
ECHO.
ECHO                2.�ָ�
ECHO.
ECHO    **********************************
ECHO.
ECHO.
Choice /C 12 /N /M ѡ��1��2����
If ErrorLevel 1 If Not ErrorLevel 2 Goto uacico1
If ErrorLevel 2 If Not ErrorLevel 3 Goto uacico2

:uacico1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 77 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
del "%userprofile%\AppData\Local\iconcache.db" /f /q
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:uacico2
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 77 /f
del "%userprofile%\AppData\Local\iconcache.db" /f /q
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:LJmenu
CLS
MODE con: COLS=40 LINES=15
ECHO.
ECHO.
ECHO    **********************************
ECHO.
ECHO               ��������
ECHO.
ECHO                1.ִ��
ECHO.
ECHO                2.����
ECHO.
ECHO    **********************************
ECHO.
ECHO.
Choice /C 12 /N /M ѡ��1��2����
If ErrorLevel 1 If Not ErrorLevel 2 Goto LJmenu1
If ErrorLevel 2 If Not ErrorLevel 3 Goto Page 2

:LJmenu1
CLS
MODE con: COLS=40 LINES=15
Color 2f
ECHO.
ECHO.
ECHO   ���������ļ����ٶ��ɵ����ļ���С������
ECHO   ��û������β��Ϣʱ������رձ�����
ECHO.
ECHO               1.ִ��
ECHO.
ECHO               2.����
Choice /C 12 /N /M ѡ��1��2����
If ErrorLevel 1 If Not ErrorLevel 2 Goto LJmenu3
If ErrorLevel 2 If Not ErrorLevel 3 Goto Page 2

:activation
CLS
MODE con: COLS=40 LINES=15
slmgr.vbs -xpr
GOTO Page 2

:configure
CLS
MODE con: COLS=40 LINES=15
Echo wscript.Echo MsgBox ("�����ĵȴ������ڿ���ϵͳ����", 36, "��ʾ")>tmp.vbs
@For /f %%i in ('cscript /nologo tmp.vbs') do If %%i==6 dxdiag  >nul 2>nul
@Del /q tmp.vbs  >nul 2>nul
GOTO Page 2

:LJmenu3
Cls
MODE con: COLS=200 LINES=50
Color 2f
ECHO �������ϵͳ�����ļ������Ե�......
del /f /s /q  %systemdrive%\Windows\Temp\*.*
del /f /s /q  %systemdrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp\*.*
del /f /s /q  %systemdrive%\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\*.*
del /f /s /q %systemdrive%\*.tmp
del /f /s /q  %systemdrive%\*._mp
del /f /s /q  %systemdrive%\*.log
del /f /s /q  %systemdrive%\*.gid
del /f /s /q  %systemdrive%\*.chk
del /f /s /q  %systemdrive%\*.old
del /f /s /q  %systemdrive%\recycled\*.*
del /f /s /q  %windir%\*.bak
del /f /s /q  %windir%\prefetch\*.*
rd /s /q %windir%\temp & md  %windir%\temp
del /f /q  %userprofile%\cookies\*.*
del /f /q  %userprofile%\recent\*.*
del /f /s /q  "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q  "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q  "%userprofile%\recent\*.*"
del /f /s /q  %windir%\system32\dllcache\*.*
echo ������������ڰ�װʱ���µĽ�ѹ�ļ������Ե�......
del /f /s /q  %SystemDrive%\AMD\*.*
del /f /s /q  %windir%\Intel\*.*
del /f /s /q  %windir%\NVIDIA\*.*
del /f /s /q  %windir%\Prog\*.*
ECHO.
ECHO.
ECHO ��������������˵�
pause>nul
GOTO Page 2



:Network
CLS
@echo ������������������...
REM ������������   
@taskkill  /f /t /im  IEXPLORE.exe >nul 2>nul
@netsh winsock reset all >nul 2>nul
@netsh int ipv4 reset all >nul 2>nul
@netsh int portproxy reset all >nul 2>nul
@netsh int tcp reset all >nul 2>nul
@netsh int teredo reset all >nul 2>nul
@echo ����IE���ô�����..   
@reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v DefaultConnectionSettings /t REG_BINARY /d 4600000000 /f >nul 2>nul
@reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v SavedLegacySettings /t REG_BINARY /d 4600000000 /f >nul 2>nul
rem ���ô���
@reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f >nul 2>nul
rem ɾ������IP��ַ
@reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /f >nul 2>nul
rem �����Զ����ƽű�����ַҲ��ɾ����
@reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v AutoConfigURL /f >nul 2>nul
@echo ����ie������..
rem ����ie����
@RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4
@RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
@for /f "tokens=4*" %%a in ('netsh interface show interface ^| findstr "������"') do set "ConName=%%~a"
netsh interface ip set dns %ConName% static 119.29.29.29
if '%errorlevel%' EQU '0' (	
echo �޸�����DNS�ɹ�   
) else (
echo �޸�����DNSʧ��   
)
REM �޸ĵ�ǰ����dns
ipconfig /flushdns
@echo 127.0.0.1 localhost>%systemroot%\system32\drivers\etc\hosts 
REM HOSTS���
@echo ����ͬ������ʱ��...���Ժ�..   
@sc config W32Time start= auto >nul 2>nul
REM ʱ�����ѡ���Զ�����
@w32tm /register >nul 2>nul
REM ע��ʱ�����
@net start W32Time >nul 2>nul
REM ����ʱ�����
@reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\Config\ /v MaxNegPhaseCorrection /t REG_DWORD /d 0xffffffff /f >nul 2>nul
@reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\Config\ /v MaxPosPhaseCorrection /t REG_DWORD /d 0xffffffff /f >nul 2>nul
REM �޸�ע���ֵ���޸� �޸�ʱ�� ��������С���
@w32tm /config /manualpeerlist:"ntp1.aliyun.com" /syncfromflags:manual /reliable:yes /update >nul 2>nul
REM �����޸�ʱ��
@w32tm /resync >nul 2>nul
@w32tm /resync >nul 2>nul
@w32tm /config /manualpeerlist:"ntp2.aliyun.com" /syncfromflags:manual /reliable:yes /update >nul 2>nul
REM �����޸�ʱ��
@w32tm /resync >nul 2>nul
@w32tm /resync >nul 2>nul
REM ����������ʾ
Echo wscript.Echo MsgBox ("��������ɡ���Ҫ�������Ժ������Ч���Ƿ���������", 36, "��ʾ")>tmp.vbs
@For /f %%i in ('cscript /nologo tmp.vbs') do If %%i==6 Start shutdown -r -t 0  >nul 2>nul
@Del /q tmp.vbs  >nul 2>nul
ECHO ��������������˵�
pause>nul
GOTO Page 2

:report
CLS
MODE con: COLS=40 LINES=15
ECHO.
ECHO.
ECHO    **********************************
ECHO.
ECHO         ��ֹwindow���ʹ��󱨸�
ECHO.
ECHO                1.ִ��
ECHO.
ECHO                2.�ָ�
ECHO.
ECHO    **********************************
ECHO.
ECHO.
Choice /C 12 /N /M ѡ��1��2����
If ErrorLevel 1 If Not ErrorLevel 2 Goto report1
If ErrorLevel 2 If Not ErrorLevel 3 Goto report2

:report1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /d 1 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /d 0 /t REG_DWORD /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:report2
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PCHealth" /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:Defender
CLS
MODE con: COLS=40 LINES=15
ECHO.
ECHO.
ECHO    **********************************
ECHO.
ECHO          �ر�Windows Defender
ECHO.
ECHO                1.ִ��
ECHO.
ECHO                2.�ָ�
ECHO.
ECHO    **********************************
ECHO.
ECHO.
Choice /C 12 /N /M ѡ��1��2����
If ErrorLevel 1 If Not ErrorLevel 2 Goto Defender1
If ErrorLevel 2 If Not ErrorLevel 3 Goto Defender2

:Defender1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 1 /t REG_DWORD /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:Defender2
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 0 /t REG_DWORD /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
sc start WinDefend
ECHO ��������������˵�
pause>nul
GOTO Page 2

:firewall
CLS
MODE con: COLS=40 LINES=15
ECHO.
ECHO.
ECHO    **********************************
ECHO.
ECHO           �ر�Windows����ǽ
ECHO.
ECHO                1.ִ��
ECHO.
ECHO                2.�ָ�
ECHO.
ECHO    **********************************
ECHO.
ECHO.
Choice /C 12 /N /M ѡ��1��2����
If ErrorLevel 1 If Not ErrorLevel 2 Goto firewall1
If ErrorLevel 2 If Not ErrorLevel 3 Goto firewall2

:firewall1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "EnableFirewall" /d 0 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "EnableFirewall" /d 0 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "EnableFirewall" /d 0 /t REG_DWORD /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2


:firewall2
sc config MpsSvc start=auto
sc start MpsSvc
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "EnableFirewall" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "EnableFirewall" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "EnableFirewall" /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:update
CLS
MODE con: COLS=40 LINES=15
ECHO.
ECHO.
ECHO    **********************************
ECHO.
ECHO         �����¶����Զ����ظ���
ECHO.
ECHO                1.ִ��
ECHO.
ECHO                2.�ָ�
ECHO.
ECHO    **********************************
ECHO.
ECHO.
Choice /C 12 /N /M ѡ��1��2����
If ErrorLevel 1 If Not ErrorLevel 2 Goto update1
If ErrorLevel 2 If Not ErrorLevel 3 Goto update2

:update1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /d 0 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /d 2 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallDay" /d 0 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallTime" /d 3 /t REG_DWORD /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:update2
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:autoUSB
CLS
MODE con: COLS=40 LINES=14
ECHO.
ECHO.
ECHO    **********************************
ECHO.
ECHO         �ر��Զ����Ż��Զ���U��
ECHO.
ECHO                1.ִ��
ECHO.
ECHO                2.�ָ�
ECHO.
ECHO    **********************************
ECHO.
ECHO.
Choice /C 12 /N /M ѡ��1��2����
If ErrorLevel 1 If Not ErrorLevel 2 Goto autoUSB1
If ErrorLevel 2 If Not ErrorLevel 3 Goto autoUSB2

:autoUSB1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /d 255 /t REG_DWORD /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /d 255 /t REG_DWORD /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:autoUSB2
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:week
CLS
MODE con: COLS=40 LINES=15
ECHO.
ECHO.
ECHO    **********************************
ECHO.
ECHO         ������������ʾ�����ڼ���
ECHO.
ECHO                1.ִ��
ECHO.
ECHO                2.�ָ�
ECHO.
ECHO    **********************************
ECHO.
ECHO.
Choice /C 12 /N /M ѡ��1��2����
If ErrorLevel 1 If Not ErrorLevel 2 Goto week1
If ErrorLevel 2 If Not ErrorLevel 3 Goto week2

:week1
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sLongDate" /d "yyyy'��'M'��'d'��', dddd" /t REG_SZ /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sShortDate" /d "yyyy/M/d/ddd" /t REG_SZ /f
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:week2
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sLongDate" /d "yyyy'��'M'��'d'��'" /t REG_SZ /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sShortDate" /d "yyyy/M/d" /t REG_SZ /f
taskkill /f /im explorer.exe
start %systemroot%\explorer
ECHO ��������������˵�
pause>nul
GOTO Page 2

:Win11
@echo off
TITLE Win11�ɰ��Ҽ��˵�������
color 3f
mode con cols=85 lines=25
:Start
CLS
ECHO. 
ECHO. 
ECHO. ==================================================================================
ECHO. ע�⣺ѡ�����ɰ��Ҽ��˵���Ĭ�ϻ᡾������Դ�����������Ա�������Ч��
ECHO. ==================================================================================
ECHO.
ECHO.       ��ѡ��Ҫ���еĲ���?
ECHO.
ECHO.           1.ʹ�� Win10 ��񡾾ɰ桿�Ҽ��˵�
ECHO.
ECHO.           2.ʹ�� Win11 ����°桿�Ҽ��˵�
ECHO.
ECHO.           3.�ֶ�������Դ������
ECHO.
ECHO.           0.����˳�
ECHO.
ECHO. ==================================================================================
:CHO
set choice=
set /p choice= �������Ӧ���֣�Ȼ�󰴻س���:
if /i "%choice%"=="1" goto Option1
if /i "%choice%"=="2" goto Option2
if /i "%choice%"=="3" goto Option3
if /i "%choice%"=="0" goto Eixt
echo ѡ����Ч������������
echo.
GOTO Start

:Option1
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
taskkill /f /im explorer.exe
start explorer.exe
pause
GOTO Start

:Option2
reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
pause
GOTO Start

:Option3
taskkill /f /im explorer.exe
start explorer.exe
pause
GOTO Start

:Eixt
goto Page 2

:application
CLS
COLOR 2f
MODE con: COLS=55 LINES=25
ECHO.
ECHO ===================================================#
ECHO                Windows  ���߰�װ   
ECHO               �����������Ѱ��������Ѱ�   
ECHO    #+++++++++++++++++++++++++++++++++++++++++++++++#         
ECHO.
ECHO    # 01��Windows 10 ���ü����      
ECHO    # 02��PotPlayer ��Ƶ������
ECHO    # 03��Office  ���ص�ַ  KMS��ַ   ʹ�÷���
ECHO    # 04��Bandizip
ECHO    # 05��΢�������п�ϼ�
ECHO    # 06��Steam
ECHO    # 07��Epic Games Launcher
ECHO    # 08��Xbox
ECHO    #-----------------------------------------------#
ECHO                                      ����1����һҳ #
ECHO                                      ����3������ҳ #
ECHO    #+++++++++++++++++++++++++++++++++++++++++++++++#
ECHO ====================================================
set /p op=.            �����������Ų��س�������07����
if %op%==01 goto Windows 10
if %op%==02 goto PotPlayer
if %op%==03 goto office tool plus kms
if %op%==04 goto Bandizip
if %op%==05 goto chang yong yun hang ku 
if %op%==06 goto Steam
if %op%==07 goto Epic Games Launcher 
if %op%==08 goto Xbox 
if %op%==1 goto Page 2
if %op%==3 goto wenjianjia
goto cho

:Windows 10
@echo off 
start https://cnczca.lanzoui.com/i5QNIsvuu8h
GOTO application

:PotPlayer
@echo off 
start http://potplayer.tv/?lang=zh_CN
GOTO application

:office tool plus kms
@echo off 
start https://www.coolhub.top/tech-articles/kms_list.html
GOTO office tool plus

:office tool plus
@echo off 
start https://otp.landian.vip/zh-cn/download.html
GOTO office tool plus shiyong

:office tool plus shiyong 
@echo off 
start https://www.bilibili.com/video/BV1eU4y1V7NU
GOTO application


:Bandizip
@echo off 
start https://www.bandisoft.com/bandizip/
GOTO application

:chang yong yun hang ku 
@echo off 
start http://dreamcast2.ysepan.com/
GOTO application

:Steam
@echo off 
start https://store.steampowered.com/
GOTO application

:Epic Games Launcher
@echo off 
start https://www.epicgames.com/site/zh-CN/home
GOTO application

:Xbox
@echo off 
start https://apps.microsoft.com/store/detail/xbox/9MV0B5HZVK9Z
GOTO application










:wenjianjia
CLS
COLOR 2f
MODE con: COLS=55 LINES=15
ECHO.
ECHO ===================================================#
ECHO                Windows  ���ļ���    
ECHO    #+++++++++++++++++++++++++++++++++++++++++++++++#         
ECHO.
ECHO    # 01��Windows �ֶ���ӿ���������
ECHO    # 02��Windows ���Ի����ļ�
ECHO.
ECHO    #-----------------------------------------------#
ECHO                                      ����1����һҳ #
ECHO                                      ����2�����ҳ #
ECHO    #+++++++++++++++++++++++++++++++++++++++++++++++#
ECHO ====================================================
set /p oq=.            �����������Ų��س�������07����
if %oq%==01 goto StartUp
if %oq%==02 goto Temp
if %oq%==1 goto Page 2
if %oq%==2 goto application
goto cho


:StartUp
@echo off 
start explorer "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
GOTO wenjianjia

:Temp
@echo off 
start explorer "%USERPROFILE%\AppData\Local\Temp"
GOTO wenjianjia


:cho
CLS
COLOR 0a
MODE con: COLS=30 LINES=5
echo.
echo �������󣬰�������������˵�
pause>nul
GOTO Page 2
:admin
CLS
COLOR 0a
MODE con: COLS=30 LINES=8
ECHO         ����ʧ�ܡ�
echo     ���Ҽ����Թ���Ա������С�
ECHO     ��������˳�...
PAUSE >nul
exit 