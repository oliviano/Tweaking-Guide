##Remote shutdown with Remote Registery Properties.

-> enable services "remote registery"
-> enable port through firewall. 
-> run command.

source:
https://www.howtogeek.com/109655/how-to-remotely-shut-down-or-restart-windows-pcs/

to enable / disable:
LocalAccountTokenFilterPolicy accessing the C$ with a local account

-> with ps:
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\system -Name LocalAccountTokenFilterPolicy -Value 0
-> with cmd:
cmd /c reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1 /f
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\LocalAccountTokenFilterPolicy to 1 or add it
