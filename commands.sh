aws s3 mb s3://chris-kay-sam-bucket  --profile sport-experiments

aws cloudformation package --s3-bucket chris-kay-sam-bucket --template-file template.yaml --output-template-file template-generated.yaml --profile sport-experiments

 aws cloudformation deploy --template-file template-generated.yaml --stack-name chris-kay-stack-sam --profile sport-experiments --capabilities CAPABILITY_IAM
