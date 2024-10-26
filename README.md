# 🐾 Spring PetCare Manager ![94.12%](https://progress-bar.xyz/94)


<!---

![Java](https://img.shields.io/badge/Java-17-blue.svg)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.5.4-brightgreen.svg)
![Draw.io](https://img.shields.io/badge/Draw.io-Diagramming%20Tool-FF73DB)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13-blue)
![Tomcat](https://img.shields.io/badge/Tomcat-9.0-yellowgreen)
![Github](https://img.shields.io/badge/Github-Source%20Control%20Management-blue.svg)
![JUnit](https://img.shields.io/badge/JUnit-Testing%20Extension-orange)
![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-orange)
![SonarQube](https://img.shields.io/badge/SonarQube-Code%20Quality-critical)
![Ansible](https://img.shields.io/badge/Ansible-IaC-red)
![Terraform](https://img.shields.io/badge/Terraform-IaC%20Tool-red)
![AWS](https://img.shields.io/badge/AWS-Cloud%20Deployment-ff9900)
![S3](https://img.shields.io/badge/S3-App%20Rollback%20Storage-yellow)
--->


<table style="border: 5px solid black; padding: 10px;">
  <tr>
    <td>

![Java](https://img.shields.io/badge/Java-17-blue.svg)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.5.4-brightgreen.svg)
![Draw.io](https://img.shields.io/badge/Draw.io-Diagramming%20Tool-FF73DB)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13-blue)
![Tomcat](https://img.shields.io/badge/Tomcat-9.0-yellowgreen)
![Github](https://img.shields.io/badge/Github-Source%20Control%20Management-blue.svg)
![JUnit](https://img.shields.io/badge/JUnit-Testing%20Extension-orange)
![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-orange)
![SonarQube](https://img.shields.io/badge/SonarQube-Code%20Quality-critical)
![Ansible](https://img.shields.io/badge/Ansible-IaC-red)
![Terraform](https://img.shields.io/badge/Terraform-IaC%20Tool-red)
![AWS](https://img.shields.io/badge/AWS-Cloud%20Deployment-ff9900)
![S3](https://img.shields.io/badge/S3-App%20Rollback%20Storage-yellow)

    
  </tr>
</table>





**Spring PetCare Manager** improves the [>>Referance App<<](https://github.com/spring-projects/spring-petclinic) which was a application built with Spring Boot, designed for managing pet care services like appointments, veterinarian schedules, and pet records. It adds a robust DevOps Pipeline to make the app deliverable.
```
The project is in development. You are open to contributing to it.
```

## ➡️ Further Developments are made in this repository:
***👉 Here, the app is deployed using a seamlessly automated DevOps pipeline :***
> - Replaced H2 Engine with PostGre SQL database
> - Made a Jenkins pipeline containing JUnit and SonarQube extensions.
> - Developed a enterprise with Dev and QA Tomcat enviromnents with a stage gate.
> - Implemented IaC with Teraform creating and Ansible for configuring resources/services in the AWS architechure, which was designed with security measures in mind


## 🎯 **Features & Technologies**
- [x] **Development**: Java App made using Spring Boot (Manage Pet Owners, Pets, Veterinarians, Appointments, and Services).
- [x] **Database**: PostgreSQL for handling interconnected entities with relational data models.
- [x] **Source Control Management**: Github
- [X] **Continuous Integration**: Using Jenkins
    - [x] JUnit Exteension for Testing
    - [x] SonarQube for Continuous monitoring, analysis and Report visualisation.
    - [ ] Storing the generated Report.
- [x] **Testing and Analysis**: Extensions such as JUnit & SonarQube.
- [x] **Continuous Delivery**: Using IaC with AWS Cloud to Deliver the App
    - [x] Cloud Native: AWS Architecture:
        - [x] VPC : Single Region
        - [x] Subnets: 
            - [x] EC2 instances for hosting
            - [x] RDS for PostgreSQL frequeltly used data
            - [x] S3 for App Rollback storage
            - [x] IAM for Policy management
    - [ ] IaC: Automate provisioning of AWS infrastructure and environment setup
        - [ ] Ansible
        - [ ] Teraform
- [x] **Linux Shell & Networking**: Basic Linux and networking configurations for server management.

## 🌐 **System Architecture** made using draw.io
- [x] `CI/CD Pipeline - NON IaC`
![CI+AWS without IAC](https://github.com/anindyadas2001/PetCareManager/blob/d7bc9749c8343b7ee78fd862d9bfdeeca7a8096f/SDLC/cicdnoiac.png)

<!--
- [ ] Infrastructure as Code
-->

## 🚀 **Java App Modification Instructions**

### 1️⃣ **Clone the Refferance Repository**
```bash
https://github.com/anindyadas2001/PetCareManager.git
cd PetCareManager
```
## Extract the 
```
extractdir.zip
```

### 2️⃣ **Database Configuration (PostgreSQL)**
- Navigate to the `src/main/resources` directory and locate the `application.properties` file.
- Update it with your PostgreSQL credentials:
```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/petclinic
spring.datasource.username=your_username
spring.datasource.password=your_password
spring.datasource.driver-class-name=org.postgresql.Driver
spring.jpa.hibernate.ddl-auto=update
```
> [!Note]
> Ensure PostgreSQL is installed and running on your local/remote server before proceeding.


### 3️⃣ **Build and Run the Application**
- To build and run the application, execute the following Maven command:
```bash
./mvnw package
java -jar target/*.jar
```
> [!Tip]
> You can access the running application at `http://localhost:8080` after successful execution.


### 4️⃣ **Deploy on Tomcat**
- Package the application into a WAR file and deploy it on Tomcat:
```bash
./mvnw clean package
```
- Deploy the WAR file on the Apache Tomcat web server:
    - Place the `war` file inside the `Tomcat/webapps` directory.
    - Start/restart the Tomcat server.

> [!Important]
> You can monitor the deployment at `http://<your-server-ip>:8080/<your-app-context>`
- Place the `war` file in the Tomcat `webapps/` directory.


### 5️⃣ **CI/CD with Jenkins**
- Create a new Jenkins pipeline project.
- Connect your GitHub repository and configure automatic triggers.
- Define build steps for packaging and deploying the WAR file.
```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh './mvnw clean package'
            }
        }
        stage('Test') {
            steps {
                sh './mvnw test'
            }
        }
        stage('Deploy') {
            steps {
                // Deployment steps (Tomcat, AWS, etc.)
            }
        }
    }
}
```
> [!Note]
> Use Jenkins to schedule automated builds on every commit.

<!--
### 6️⃣ **Infrastructure Setup with Ansible**
- Provision the necessary AWS infrastructure using Ansible:
    - EC2: To host the web application.
    - RDS: To manage the PostgreSQL database.
    - S3: For storing static files or backups.
- Run the Ansible playbook for infrastructure provisioning:
```bash
ansible-playbook -i inventory setup.yml
```
> [!Note]
> Ensure your AWS credentials are configured and the necessary IAM roles are in place before running the playbook.
-->

### 6️⃣ **Monitoring and Code Quality**
- Use SonarQube to ensure code quality and reduce technical debt.
- Set up SonarQube by running the following command:
```bash
sonar-scanner -Dsonar.projectKey=PetCareManager

```

## **AWS Services Modifications:**
- IAM Role for S3 Access:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::your-bucket-name/*"
    }
  ]
}
```

- Create a Backup Script:
``` bash
#!/bin/bash

# Variables
APP_DIR="/path/to/your/java/app"  # The directory where your Java app is located
BACKUP_FILE="/tmp/java-app-backup-$(date +%Y%m%d%H%M%S).tar.gz"
S3_BUCKET="your-bucket-name"
S3_PATH="s3://${S3_BUCKET}/backups/java-app-$(date +%Y%m%d%H%M%S).tar.gz"

# Create a tar.gz backup of the Java app directory
tar -czvf $BACKUP_FILE -C $APP_DIR .

# Upload the backup to S3
aws s3 cp $BACKUP_FILE $S3_PATH

# Optionally, remove the local backup file
rm -f $BACKUP_FILE

echo "Backup complete. File uploaded to $S3_PATH"
```
> Automate the Script Execution:
    > create a cron job `$ crontab -e`
    > Add a cron entry to run the script at a specific time ``
  
- Connecting Tomcat to EBS:
    - [Java app to EBS](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_Java.html)
    - [Elastic Beanstalk & Tomcat](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/java-tomcat-platform.html)
    
- In Private EC2 instance to recognise the data inside RDS run the following commands:
```bash
# To Update all dependencies
sudo yum update && upgrade

# To install PostgreSQL
sudo yum install postgresql

# To cheak version
psql --version

#Connect to the RDS database
sudo su
psql -h <RDS_endpoint> -U <USERNAME> -d <DATABASE_NAME> -p 5432 --sslmode=verify-full

#Verify and show data base:
SELECT * FROM pg_database

```

### 📋 **Project Management**
- Track progress, database schema, and tasks using Notion Dashboard.

### 🤝 **Contributions**
`You are welcome contributions! Please feel free to:`
- Open an issue for any bugs or suggestions.
- Submit a pull request to improve the application.

### 📝 **Project Highlights**
- Built a scalable Spring Boot web application and deployed it on Apache Tomcat.
- Automated build, test, and deployment using a Jenkins CI/CD pipeline and SonarQube for code quality checks.
- Provisioned and managed AWS infrastructure using Ansible with a focus on Infrastructure as Code (IaC).

