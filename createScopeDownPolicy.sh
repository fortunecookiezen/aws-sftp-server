#!/usr/bin/env bash
PROFILE=$1
REGION='us-east-1'
[ -z $PROFILE ] && echo "specify AWS_DEFAULT_PROFILE" && exit 1
[ -z $AWS_DEFAULT_PROFILE ] && export "AWS_DEFAULT_PROFILE=$PROFILE"
[ -z $AWS_DEFAULT_REGION ] && export "AWS_DEFAULT_REGION=$REGION" # this feels janky
`which aws` iam create-policy --policy-name TransferUserScopeDownPolicy --policy-document file://TransferUserScopeDownPolicy.json
