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

**Spring PetCare Manager** is a web application built with Spring Boot, designed for managing pet care services like appointments, veterinarian schedules, and pet records. The backend is powered by PostgreSQL, and the app is deployed using Tomcat, integrated with Jenkins CI/CD pipeline, and SonarQube for code quality checks. The project leverages various AWS services for deployment and Ansible for Infrastructure as Code (IaC).

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

![System Architecture](https://not uploaded uet)

## 🚀 **Setup Instructions**

### 1️⃣ **Clone the Repository**
```bash
git clone https://github.com/your-username/spring-petcare-manager.git
cd spring-petcare-manager
```
### 2️⃣ **Database Configuration**
- Update the application.properties file with your PostgreSQL credentials:
```properties
spring.datasource.url=jdbc:postgresql://<DB_HOST>:<DB_PORT>/<DB_NAME>
spring.datasource.username=<USERNAME>
spring.datasource.password=<PASSWORD>
```

### 3️⃣ **Build and Run the Application**
```bash
./mvnw spring-boot:run
```

### 4️⃣ **Deploy on Tomcat**
- Package the application into a WAR file and deploy it on Tomcat:
```bash
./mvnw clean package
```
- Place the `war` file in the Tomcat `webapps/` directory.

### 5️⃣ **CI/CD with Jenkins**
- Set up a Jenkins pipeline using the `Jenkinsfile` provided in the repository to automate build, test, and deployment processes.

### 6️⃣ **Infrastructure Setup with Ansible**
- Use Ansible playbooks to provision AWS resources like EC2, RDS, and S3:
```bash
ansible-playbook -i inventory setup.yml
```

### 7️⃣ **Monitoring and Code Quality**
- Set up SonarQube for static code analysis:
```bash
sonar-scanner -Dsonar.projectKey=spring-petcare-manager
```

### 📋 **Project Management**
- Track progress, database schema, and tasks using Notion Dashboard.

### 🤝 **Contributions**
` You are most welcome contributions! Please open an issue or submit a pull request for enhancements or bug fixes. `

### 📝 **Project Highlights**
- Developed a Spring Boot web application and deployed using Tomcat.
- Automated CI/CD with Jenkins, SonarQube, and AWS services.
- Provisioned cloud infrastructure with Ansible using Infrastructure as Code (IaC) principles.
