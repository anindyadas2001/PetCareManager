node {
    projectName="mypetclinic"
    environment { 
        softwareVersion()
    }
    stage('Code') {
        stage('clean') {
            sh """ #!/bin/bash
                rm -rf spring-petclinic
            """
        }
        stage('clone') {
            git branch: 'main', url: 'https://github.com/krishnamanchikalapudi/spring-petclinic.git'
        } // stage: clone
        stage('compile') {
            sh """ #!/bin/bash
                mvn clean install -DskipTests=true
            """
        } // stage: compile
    } // stage: code
    stage('Tests') {
        parallel unitTest: {
            stage ("unitTest") {
                timeout(time: 10, unit: 'MINUTES') {
                    sh """ #!/bin/bash
                        mvn test surefire-report:report

                        echo 'surefire report generated in http://localhost:8080/job/${projectName}/${env.BUILD_ID}/execution/node/3/ws/target/site/surefire-report.html'
                    """
                } // timeout
            } // stage: unittest
        }, sonarQube: {
            stage ("sonarQube") {
                timeout(time: 10, unit: 'MINUTES') {
                    sh """ #!/bin/bash
                        mvn clean verify sonar:sonar -Dsonar.host.url=http://localhost:9000 -Dsonar.login=your-sonarqube-token
                    """
                } // timeout
            } // stage: sonarQube
        } // parallel
    } // stage: tests
}

def softwareVersion() {
    sh """ #!/bin/bash
        java -version
        mvn -version
    """
}
