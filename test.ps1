$logFile = "$(pwd)\test.txt"

if(!(Test-Path($logFile))){
    New-Item ItemType File -Name 'test.txt'
}

while($true){
    $cpu = (get-counter '\processor(_total)\% processor time').CounterSamples.CookedValue
    $CpuRounded = "$(Get-Date)  Cpu Usuage: $([math]::Round($cpu, 2)) %"

    $CpuRounded | Out-File $logFile -append
    start-sleep -seconds 5
}