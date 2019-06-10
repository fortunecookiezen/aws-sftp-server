# aws-sftp-server

CloudFormation Templates for AWS Transfer sftp server

## Creating the AWS Transfer SFTP Server

Apply the template _sftp-server.yaml_ in your account. It creates an AWS Transfer sftp server instance and an IAM role for logging that uses the AWSTransferLoggingAccess and CloudWatchFullAccess aws-managed policies.

## Creating the S3 Bucket

## Create the scope down policy

createScopeDownPolicy.sh and TransferUserScopeDownPolicy.json are used to create an [AWS IAM scope down policy](https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down) as recommended for optimal user security.

edit _createScopeDownPolicy.sh and set your region, then execute the script passing the account profile for the account you are using.

## Creating Transfer Users

## Applying Scope Down Policy to Users

## Current Status

* sftp-server.yaml works and is tested.

## ToDo:

* ~Add S3 Bucket Creation example~
* ~Add Transfer::User creation example~
* ~Add exports to the stack so that users and buckets can be split from server~
