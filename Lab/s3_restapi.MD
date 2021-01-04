* create bucket
    * sai-exam-prep-restapi
* upload json file
```cmd
aws s3 cp persons.json s3://sai-exam-prep-restapi/persons.json
```

* CloudFront
  * create distribution with origin as : sai-exam-prep-restapi.s3.amazonaws.com (note: no website here)
  