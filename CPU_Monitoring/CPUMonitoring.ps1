$logFile = "C:\Users\Jerry\Documents\Cubic_spline\Logfile\log.txt "
$folder = "C:\Users\Jerry\Documents\Cubic_spline\logfile"

if(!(Test-Path $folder )){
    New-Item -ItemType Directory -Path "C:\Users\Jerry\Documents\Cubic_spline\logfile"
}


while($true){
    $cpu = (Get-Counter "\processor(_total)\% processor time").CounterSamples.CookedValue
    $time = Get-Date -Format 'yyyy:MM:dd:HH:mm'

    "$time    CPU Usage: $([math]::Round($cpu, 2)) %" | Out-File -Append $logFile

    Start-sleep -seconds 5
}



