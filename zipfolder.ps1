$source = "C:\Path\To\Directory"
$destination = "C:\Path\To\Zip\file.zip"

 If(Test-path $destination) {Remove-item $destination}
Add-Type -assembly "system.io.compression.filesystem"
[io.compression.zipfile]::CreateFromDirectory($Source, $destination)
