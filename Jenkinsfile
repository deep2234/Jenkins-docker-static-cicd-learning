pipeline{
    agent any
    environment {
        IMAGE_NAME="dip-static-jenkins-app"
        CONTAINER_NAME="dip-static-container"
    }
    stages{
        stage("Clone Repository"){
            steps{
                echo 'Cloning repo...'
                //this part is automatic 
            }
        }

        stage("Build-Docker-Image"){
            steps{
                script{
                    echo 'Building docker image'
                    sh "docker build -t $IMAGE_NAME ."
                }
            }
        }
        stage("Stop & Remove Old Containers"){
            steps{
                script{
                    echo 'Removing old containers if exists'
                    sh "docker rm -f $CONTAINER_NAME || true"
                }
            }
        }
        stage("Run new container"){
            steps{
                script{
                    echo 'Runningn the new container'
                    sh "docker run -d --name $CONTAINER_NAME -p 8081:80 $IMAGE_NAME"
                }
            }
        }
        post{
            success{
                echo "Deployment successful"

            }
            failure{
                echo "Deployment failed"
            }
            




        }



}
