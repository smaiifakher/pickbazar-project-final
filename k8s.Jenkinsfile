pipeline {
    agent any
    environment {
        KUBECONFIG = credentials('my-kubeconfig')
        DOCKER_REGISTRY = 'docker.io'
        DOCKER_IMAGES = [
            'smaii/pickbazar-laravel:latest',
            'smaii/pickbazar-admin:latest',
            'smaii/pickbazar-shop:latest',
            'mysql:8.0',
            'redis:alpine',
            'mailhog/mailhog:latest'
        ]
        K8S_NAMESPACE = 'my-cluster'
        MANIFESTS_PATH = 'kube'
    }
    stages {
        stage('Pull images from Docker Hub') {
            steps {
                script {
                    // Pull the Docker images
                    docker.withRegistry("${DOCKER_REGISTRY}", "docker-hub") {
                        DOCKER_IMAGES.each { image ->
                            docker.pull(image)
                        }
                    }
                }
            }
        }
        stage('Update the Kubernetes manifests') {
            steps {
                script {
                    // Update the Kubernetes manifests with the Docker image tags
                    DOCKER_IMAGES.each { image ->
                        sh "sed -i 's|${image%:*}:latest|${image}|g' ${MANIFESTS_PATH}/*.yaml"
                    }
                }
            }
        }
        stage('Apply the Kubernetes manifests') {
            steps {
                script {
                    // Apply the Kubernetes manifests
                    sh "kubectl apply -f ${MANIFESTS_PATH}/ --namespace=${K8S_NAMESPACE}"
                }
            }
        }
    }
}
