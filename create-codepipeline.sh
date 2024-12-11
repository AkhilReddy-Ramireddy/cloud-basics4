#!/bin/bash
aws cloudformation update-stack \
  --stack-name codepipeline-github-app \
  --template-body file://codepipeline.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters ParameterKey=GitHubOAuthToken,ParameterValue=$(aws secretsmanager get-secret-value --secret-id github-oauth-token --query SecretString --output text)
