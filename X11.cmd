:: tail the log so the launch console is used
:: /apl/cygwin64/home/ZEE-PC/.cache/lxsession/LXDE

start /b "X11 %date% ~ %time%" xinit
taskkill /f /IM X11.cmd


