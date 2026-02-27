

$employees = @(
    [PSCustomObject]@{ Name = 'Bob'; Age = 45; Role = 'Site reliabilty engineer' }
    [PSCustomObject]@{ Name = 'shaw'; Age = 56; Role = 'DevSec Ops' }
    [PSCustomObject]@{ Name = 'Kayode'; Age = 26; Role = 'Cybersecurity' }
    [PSCustomObject]@{ Name = 'Michelle'; Age = 23; Role = 'Real Estate Personell' }
    [PSCustomObject]@{ Name = 'Merlin '; Age = 156; Role = 'Magician' }
    
)

foreach($object in $employees){
    "$($object.Name) is a $($object.Role)"
}