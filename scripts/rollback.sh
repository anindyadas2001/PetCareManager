#!/bin/bash
ENV=$1

if [[ -z "$ENV" ]]; then
    ENV="qa"
fi

echo "Rolling back deployment for $ENV environment..."

# Update with your S3 bucket details and EC2 IPs.
aws s3 cp s3://<bucket-name>/previous-version.war /path/to/petcare-manager.war
scp -i /path/to/key.pem /path/to/petcare-manager.war ec2-user@<QA_EC2_PUBLIC_IP>:/path/to/tomcat/webapps/
ssh -i /path/to/key.pem ec2-user@<QA_EC2_PUBLIC_IP> 'sudo systemctl restart tomcat'
