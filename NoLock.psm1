# Global variable to store the job
$global:ScrollLockJob = $null

# Function to start the loop as a background job
function Start-ScrollLockToggle {
    $global:ScrollLockJob = Start-Job -ScriptBlock {
        Add-Type -AssemblyName System.Windows.Forms
        while ($true) {
            [System.Windows.Forms.SendKeys]::SendWait("{SCROLLLOCK}")
            Start-Sleep -Milliseconds 100
            [System.Windows.Forms.SendKeys]::SendWait("{SCROLLLOCK}")
            Start-Sleep -Seconds 180
        }
    } -Name "NoLock"
}

# Function to stop the loop
function Stop-ScrollLockToggle {
    if ($null -ne $global:ScrollLockJob) {
        Stop-Job -Job $global:ScrollLockJob
        Remove-Job -Job $global:ScrollLockJob
        $global:ScrollLockJob = $null
    }
}
