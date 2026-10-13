pipeline {
    agent any
    tools {
        maven "MAVEN3.9"
        jdk "JDK21"
    }
    
    environment {
        SNAP_REPO = 'vprofile-snapshot'
		NEXUS_USER = 'admin'
		NEXUS_PASS = 'admin123'
		RELEASE_REPO = 'vprofile-release'
		CENTRAL_REPO = 'vpro-maven-central'
		NEXUSIP = '172.31.2.21'
		NEXUSPORT = '8081'
		NEXUS_GRP_REPO = 'vpro-maven-group'
        NEXUS_LOGIN = 'nexuslogin'
    }

    stages {
        stage('Build'){
            steps {
                sh 'mvn -s settings.xml -DskipTests install'
            }
            post {
                success {
                    echo 'Build completed successfully. Now archiving the artifacts...'
                    archiveArtifacts artifacts: '**/target/*.war', fingerprint: true
                }
            }
        }
        stage('Test') {
            steps {
                sh 'mvn -s settings.xml test'
            }
            post {
                success {
                    echo 'Tests completed successfully.'
                }
            }
        }
        stage('Checkstyle Analysis') {
            steps {
                sh 'mvn -s settings.xml checkstyle:checkstyle'
            }
            post {
                success {
                    echo 'Checkstyle analysis completed successfully.'
                }
            }
        }
    }
}