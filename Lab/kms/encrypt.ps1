# To run this example, replace the fictitious key ARN with a valid value.
$CmkArn = 'cmkarnhere'

aws-encryption-cli --encrypt --input Hello.txt --wrapping-keys key=$CmkArn `
                           --metadata-output $home\Metadata.txt `
                           --commitment-policy require-encrypt-require-decrypt `
                           --encryption-context purpose=test `
                           --output .