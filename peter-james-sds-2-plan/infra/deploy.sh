#!/bin/bash
# Put your deployment kick off script actions here

if [! aws sts get-caller-identity]; then
    echo >&2 "aws creds not working"
    exit 2
fi

readonly UserDataScript="ec2-user-data.sh"


aws cloudformation deploy   \
    --stack-name "aaf-networks"  \
    --template-file "template.yml"          \
    --capabilities CAPABILITY_IAM           \
    --no-fail-on-empty-changeset            \
    --region "eu-west-2"                    \
    --parameter-overrides UserDataScript=${UserDataScript}