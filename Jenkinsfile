pipeline {
    agent any
    environment {
        // This pulls your 'jenkins_user' and password from the vault
        DB_CREDS = credentials('pg-prod-db')
    }
    stages {
        stage('Deploy SQL Script') {
            steps {
                sh '''
                    export PGPASSWORD=${DB_CREDS_PSW}
                    psql -h 192.168.26.11 -U ${DB_CREDS_USR} -d postgres -f create_transactions.sql
                '''
            }
        }
    }
}