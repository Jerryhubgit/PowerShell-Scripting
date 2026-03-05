$path = 'c:\windows\temp'

$temporaryFiles = ls $path  | select-object lastwritetime, Name
$

foreach($file in $temporaryFiles){
    $period = ((get-date) - $file.lastwritetime).days
        if($period -ge 7){
            "$period Days   $($file.name)"
        }
}