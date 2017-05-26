Create S3 bucket
```powershell
    New-S3Bucket -BucketName TechSmart -PublicReadOnly
```
Remove S3 bucket
```powershell
Get-S3Object -BucketName <bucketname> | % { Remove-S3Object -BucketName <bucketname> -Key $_.Key }
Remove-S3Bucket -BucketName <bucketname>
```

Upload to S3 bucket
```powershell
Write-S3Object -BucketName alex-techsmart -Key src -File .\src.zip -CannedACLName public-read
```


Zip folder  [Source](https://gist.github.com/stefanteixeira/0428e8ade6be09d94b90)
```powershell
$source = "C:\Path\To\Directory"
$destination = "C:\Path\To\Zip\file.zip"

 If(Test-path $destination) {Remove-item $destination}
Add-Type -assembly "system.io.compression.filesystem"
[io.compression.zipfile]::CreateFromDirectory($Source, $destination)
```

