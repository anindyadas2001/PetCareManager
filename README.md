# 🐾 Spring PetCare Manager 

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


**Spring PetCare Manager** [ (Refferance) ](https://github.com/anindyadas2001/spring-petclinic) is a web application built with Spring Boot, designed for managing pet care services like appointments, veterinarian schedules, and pet records.
## ➡️ Further Developments are made in this repository:
***👉 Here, the app is deployed using a seamlessly automated DevOps pipeline :***
> - The backend is powered by PostgreSQL, and the app is deployed using Tomcat, integrated with Jenkins CI/CD pipeline, and SonarQube for code quality checks.
> - The project leverages various AWS services for deployment and Ansible for Infrastructure as Code (IaC).


### ⌛ **Completion Percentage:**

```
** The Project is functional. Most of it has been completed. **
> -  Reffer to the **Features & Technologies** for the progress 
> -  The overview is provided for now
```
---

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
            - [ ] S3 for App Rollback storage
            - [x] IAM for Policy management
    - [ ] IaC: Automate provisioning of AWS infrastructure and environment setup
        - [ ] Ansible
        - [ ] Teraform
- [x] **Linux Shell & Networking**: Basic Linux and networking configurations for server management.

## 🌐 **System Architecture** made using draw.io
- [x] `Continuous integration Phase`
![CI Pipeline ](https://github.com/anindyadas2001/PetCareManager/blob/be6cf4a0c8dd93db669319ffdb0fdd096d7a474b/SDLC/CI.svg)

<!--
- [ ] Infrastructure as Code
-->

- [x] `AWS Architecture`
![CD Pipeline]()

## 🚀 **Setup Instructions**

### 1️⃣ **Clone the Refferance Repository**
```bash
git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic
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

