pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                dockerfile {
                    label 'docker'
                }
            }
            steps {
                sh 'cp /go/src/app/vendor/github.com/FINTprosjektet/fint-token/fint-token_* .'
                stash includes: 'fint-token_*', name: 'bin'
            }
        }
        stage('Deploy') {
            agent {
                docker {
                    image 'asgeir/gothub'
                    label 'docker'
                }
            }
            environment {
                GITHUB_TOKEN = credentials('github_fint_jenkins')
            }
            when {
                tag pattern: "v\\d+\\.\\d+\\.\\d+(-\\w+-\\d+)?", comparator: "REGEXP"
            }
            steps {
                unstash 'bin'
                sh "for f in fint-token_*; do gothub upload --user FINTprosjektet -repo fint-token --tag ${TAG_NAME} --name \$f --file \$f; done"
            }
        }
    }
}
