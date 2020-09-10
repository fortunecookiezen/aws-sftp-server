# aws-sftp-server

CloudFormation Templates for AWS Transfer sftp server

There are two parts to this:

1. Create the AWS Transfer SFTP Service in the account
2. Create S3 bucket and transfer user

## Creating the AWS Transfer SFTP Server

Apply the template _sftp-server.yaml_ in your account. It creates an AWS Transfer sftp server instance and an IAM role for logging that uses the AWSTransferLoggingAccess and CloudWatchFullAccess aws-managed policies.

## Creating the S3 Bucket and AWS Transfer users

Apply the template _sftp-user.yaml_ in your account. It creates an S3 bucket, an sftp bucket user role, and an AWS Transfer user with a proper scope down policy limiting the user's access to the new bucket. To create the SFTP user, you will need the user's public key.

## Current Status

* sftp-server.yaml works and is tested.
* sftp-user.yaml works and is tested.

## ToDo:

* ~Add S3 Bucket Creation example~
* ~Add Transfer::User creation example~
* ~Add exports to the stack so that users and buckets can be split from server~

# _old notes left for context, I'll clean this up later._

## Create the scope down policy

createScopeDownPolicy.sh and TransferUserScopeDownPolicy.json are used to create an [AWS IAM scope down policy](https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down) as recommended for optimal user security.

edit _createScopeDownPolicy.sh and set your region, then execute the script passing the account profile for the account you are using.
