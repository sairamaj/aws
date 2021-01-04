## Hosting as static web site
* Create s3 bucket
* upload web folder which has index.html as welcome message
* Remove Blocks
* Edit the policy to give the full permision
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::sai-exam-prep/*"
        }
    ]
}
```
* browse the url
* http://sai-exam-prep.s3-website-us-west-2.amazonaws.com/web/

## Make through cloud front
* Create distribution
* Gave the s3 bucket
* Browsed through 
* http://d349590fj4ih.cloudfront.net/web/

## Restricting the S3 directly
* Found that S3 static web site through CloudFront cannot use OAI (Origin Access Identity)
* With S3 as static web site and cloud front one has to use Refer header to restrict S3 and allow only through CloudFront

## Restricting S3 static using custom referee
```powershell
invoke-webrequest http://sai-exam-prep.s3-website-us-west-2.amazonaws.com/web
```
### Futher readings
[How do I use CloudFront to serve a static website hosted on Amazon S3](https://aws.amazon.com/premiumsupport/knowledge-center/cloudfront-serve-static-website/)