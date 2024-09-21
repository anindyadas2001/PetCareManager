# 🐾 PetCare Manager

[![Java](https://img.shields.io/badge/Java-17-blue.svg)](https://www.oracle.com/java/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.5.4-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13-blue)](https://www.postgresql.org/)
[![Tomcat](https://img.shields.io/badge/Tomcat-9.0-yellowgreen)](http://tomcat.apache.org/)
[![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-orange)](https://www.jenkins.io/)
[![SonarQube](https://img.shields.io/badge/SonarQube-Code%20Quality-critical)](https://www.sonarqube.org/)
[![Ansible](https://img.shields.io/badge/Ansible-IaC-red)](https://www.ansible.com/)
[![AWS](https://img.shields.io/badge/AWS-Cloud%20Deployment-ff9900)](https://aws.amazon.com/)

**PetCare Manager** is a web application built with Spring Boot, designed to manage pet care services such as Pet Owners, Pets, Veterinarians, and Appointments. The backend is powered by PostgreSQL, and the app is deployed using Tomcat, integrated with Jenkins for CI/CD automation, and SonarQube for code quality checks. The project utilizes AWS cloud infrastructure for deployment and Ansible for Infrastructure as Code (IaC).

---

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
