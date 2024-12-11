#!/bin/bash
# Update the CodePipeline
aws cloudformation update-stack --stack-name wordpress-pipeline --template-body file://codepipeline.yaml --capabilities CAPABILITY_NAMED_IAM