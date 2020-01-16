

Set-PSDebug -Strict
function Get-WinEventTail($LogName, $ShowExisting=50) {
    if ($ShowExisting -gt 0) {
        $data = Get-WinEvent -provider $LogName -max $ShowExisting
        $data | sort RecordId
        $idx = $data[0].RecordId
    }
    else {
        $idx = (Get-WinEvent -provider $LogName -max 1).RecordId
    }

    while ($true)
    {
        start-sleep -Seconds 1
        $idx2  = (Get-WinEvent -provider $LogName -max 1).RecordId
        if ($idx2 -gt $idx) {
            $data = Get-WinEvent -provider $LogName -max ($idx2 - $idx + 1000) | where {$_.RecordId -gt $idx} | sort RecordId
            $data
            $idx = $data[-1].RecordId
        }

        # Any key to terminate; does NOT work in PowerShell ISE!
        #if ($Host.UI.RawUI.KeyAvailable) { return; }
    }
}







