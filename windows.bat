@echo off
mode con cols=90 lines=100 & color fc

rem 獲取管理員權限
:: BatchGotAdmin  
:-------------------------------------  
rem  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
rem --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (  
    echo 獲取管理員權限中,如果UAC彈窗,請選擇允許...
    goto UACPrompt  
) else ( goto gotAdmin )   
:UACPrompt  
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"   
    "%temp%\getadmin.vbs"
    exit /B  
:gotAdmin  
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )  
    pushd "%CD%"  
    CD /D "%~dp0"

rem 激活部分
cls
:start
echo\
echo                                請輸入數字選擇(請以管理員模式運行):
echo\
echo           ==============================================================================
echo           *                                                                            *
echo           *                        1：激活Windows 10 Pro 版                            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        2：激活Windows 10 Pro Workstations版                *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        3：激活Windows 10 Pro Education版                   *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        4：激活Windows 10 Education版                       *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        5：激活Windows 10 Enterprise版                      *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        6：激活Windows 10 Enterprise LTSC 2019 版           *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        7：激活Windows 10 Enterprise LTSB 2016版            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        8：激活Windows 10 Enterprise 2015 LTSB版            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        9：激活Windows 8.1 Pro版                            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       10: 激活Windows 8 Pro版                              *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       11：激活Windows 8.1 Enterprise版                     *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       12：激活Windows 8 Enterprise版                       *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       13：激活Windows 7 Pro版                              *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       14：激活Windows 7 Enterprise                         *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       0：查看 Windows 激活狀態                             *
echo           *                                                                            *
echo           ==============================================================================
set /P var=":"
if %var%==1  goto 1
if %var%==2  goto 2
if %var%==3  goto 3
if %var%==4  goto 4
if %var%==5  goto 5
if %var%==6  goto 6
if %var%==7  goto 7
if %var%==8  goto 8
if %var%==9  goto 9
if %var%==10 goto 10
if %var%==11 goto 11
if %var%==12 goto 12
if %var%==13 goto 13
if %var%==14 goto 14
if %var%==0 goto look

:1
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit

:2
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit


:3
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit


:4
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit


:5
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit


:6
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit


:7
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit


:8
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit


:9
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit



:10
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk NG4HW-VH26C-733KW-K6F98-J8CK4
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit


:11
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk MHF9N-XY6XB-WVXMC-BTDCT-MKKG7
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit



:12
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk 32JNW-9KQ84-P47T8-D8GGY-CWCK7
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit


:13
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit

:14
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     接下來將自動激活,彈窗三次,請點擊每一步彈窗的確定,激活過程需要聯網      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk 33PXH-7Y6KF-2VJC9-XBBR8-HVTHH
echo\
echo                                     第二步 設定認證伺服器...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動聯網激活...
echo\
slmgr -ato
goto exit


:look
cls
echo\
echo                                          請注意查看彈窗內容
slmgr.vbs -dlv
goto exit


:exit
echo\
echo\
echo\
echo\
echo\
echo\
echo           *******************************指令已經完成***********************************
echo           *                                                                            *
echo           *                                                                            *
echo           *                              按任意鍵退出                                  *
echo           *                                                                            *
echo           *                        http://kwokpcaa.lionfree.net/kms.html               *
echo           *                                                                            *
echo           *******************************By:況天佑*************************************
pause>nul 
start http://kwokpcaa.lionfree.net/kms.html & exit

















