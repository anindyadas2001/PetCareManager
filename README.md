# 🐾 Spring PetCare Manager

![Java](https://img.shields.io/badge/Java-17-blue.svg)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.5.4-brightgreen.svg)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13-blue)
![Tomcat](https://img.shields.io/badge/Tomcat-9.0-yellowgreen)
![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-orange)
![SonarQube](https://img.shields.io/badge/SonarQube-Code%20Quality-critical)
![Ansible](https://img.shields.io/badge/Ansible-IaC-red)
![AWS](https://img.shields.io/badge/AWS-Cloud%20Deployment-ff9900)
![License](https://img.shields.io/github/license/your-username/spring-petcare-manager)


**Spring PetCare Manager** [ (click for app repo) ](https://github.com/anindyadas2001/spring-petclinic) is a web application built with Spring Boot, designed for managing pet care services like appointments, veterinarian schedules, and pet records.
- **Further Developments are made in this repository, where the app is deployed into a seamlessly automated DevOps pipeline.**
> The backend is powered by PostgreSQL, and the app is deployed using Tomcat, integrated with Jenkins CI/CD pipeline, and SonarQube for code quality checks.
> The project leverages various AWS services for deployment and Ansible for Infrastructure as Code (IaC).


## 🎯 **Features**
- **Entity Management**: Manage Pet Owners, Pets, Veterinarians, Appointments, and Services.
- **Database**: PostgreSQL for handling interconnected entities with relational data models.
- **CI/CD**: Automated build and deployment using Jenkins.
- **Code Quality**: Continuous monitoring and analysis via SonarQube.
- **AWS Integration**: EC2 for hosting, RDS for PostgreSQL, and S3 for asset storage.
- **Ansible for IaC**: Automate provisioning of AWS infrastructure and environment setup.
- **Linux Shell & Networking**: Basic Linux and networking configurations for server management.

## 🛠️ **Technologies**
| Technology            | Description                                        |
|-----------------------|----------------------------------------------------|
| **Java (Spring Boot)** | Backend framework for developing the web app.      |
| **PostgreSQL**         | Database for managing interconnected entities.     |
| **Tomcat**             | Web server to deploy the Spring Boot app.          |
| **Jenkins**            | Automates CI/CD pipeline for seamless integration. |
| **SonarQube**          | Ensures code quality and reduces technical debt.   |
| **AWS**                | Cloud infrastructure (EC2, RDS, S3, IAM).         |
| **Ansible**            | Infrastructure automation using playbooks.         |
| **Linux**              | Shell commands for server and network management.  |

## 🌐 **System Architecture**

![System Architecture](https://not. uploaded. yet.png)

## 🚀 **Setup Instructions**

### 1️⃣ **Clone the Repository**
```bash
git clone https://github.com/anindyadas2001/PetCareManager.git
cd PetCareManager
```


### 2️⃣ **Database Configuration (PostgreSQL)**
- Navigate to the `src/main/resources` directory and locate the `application.properties` file.
- Update it with your PostgreSQL credentials:
```properties
spring.datasource.url=jdbc:postgresql://<DB_HOST>:<DB_PORT>/<DB_NAME>
spring.datasource.username=<USERNAME>
spring.datasource.password=<PASSWORD>
```
> [!Note]
> Ensure PostgreSQL is installed and running on your local/remote server before proceeding.


### 3️⃣ **Build and Run the Application**
- To build and run the application, execute the following Maven command:
```bash
./mvnw spring-boot:run
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


### 7️⃣ **Monitoring and Code Quality**
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

### **Useful Links**
- [Jenkins Documentation](https://www.jenkins.io/doc/)
- [SonarQube Documentation](https://docs.sonarqube.org/latest/)
- [Ansible Documentation](https://docs.ansible.com/)
- [Spring Boot Reference Guide](https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/)

