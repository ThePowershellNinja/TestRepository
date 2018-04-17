Get-ChildItem -path $PSScriptRoot -Recurse | Unblock-File
Get-ChildItem -Path $PSScriptRoot -Filter '*.ps1' -Exclude '*.ps1xml' -Recurse | foreach { . $_.FullName}

Export-ModuleMember -Function * -Cmdlet * -Variable * -Alias *

Try{
    $psISE.Options.ShowDefaultSnippers = $false
}
Catch{
}