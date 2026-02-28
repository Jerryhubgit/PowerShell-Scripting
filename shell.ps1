

try {
    get-content -path 'c:\users\mary' -ErrorAction stop 
    write-output 'File exists'
}catch{
    "Error: $($_.Exception.Message)"
}finally{
    write-output 'Finally executed the code'
}