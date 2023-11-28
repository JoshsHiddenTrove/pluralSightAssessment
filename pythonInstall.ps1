[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.9.6/python-3.9.6.exe" -OutFile "c:/temp/python-3.9.6.exe";

Start-Job -Name Job1 -ScriptBlock { c:/temp/python-3.9.6.exe /quiet InstallAllUsers=0 InstallLauncherAllUsers=0 PrependPath=1 Include_test=0}
Wait-Job -Name Job1
