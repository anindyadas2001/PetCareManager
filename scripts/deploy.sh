#!/bin/bash
ENV=$1
WAR_FILE=target/petcare-manager.war

if [[ -z "$ENV" ]]; then
    ENV="qa"
fi

echo "Deploying PetCare Manager to $ENV environment..."

# Update with your EC2 instance IP and path to the Tomcat webapps directory.
if [[ "$ENV" == "qa" ]]; then
    EC2_IP=<QA_EC2_PUBLIC_IP>
else
    EC2_IP=<PROD_EC2_PUBLIC_IP>
fi

scp -i /path/to/key.pem "$WAR_FILE" ec2-user@$EC2_IP:/path/to/tomcat/webapps/
ssh -i /path/to/key.pem ec2-user@$EC2_IP 'sudo systemctl restart tomcat'
