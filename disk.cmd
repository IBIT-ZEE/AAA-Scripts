

:MAIN
	@echo off
	if "%~1"=="" ( call AAA-Obs %0 )

	:: PS/AAA-1-System/Storage-Disks
	C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe ^
		"Write-Progress -activity 'Inspecting...'; get-disk | Select-Object @{ label='##'; expression={$_.Disknumber}}, @{label='Location'; expression={$_.Location}}"

	
	exit /b



:obs
	Fork:

	storage-
	storage-disk
	storage-volume
	ssh <args...>
	...


	 /\------------/\
	<  > Storage: <  >
	 \/------------\/
