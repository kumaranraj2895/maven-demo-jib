node {
        stage('Checkout SCM') {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/kumaranraj2895/maven-demo-jib']]])
        }
        stage('Deploy app') {
                    kubernetesDeploy(
                        configs: 'deployment.yaml',
                        kubeconfigId: 'Kubernetes_Cluster_Config'
                        )
                }
 	stage('Deploy service') {
                    kubernetesDeploy(
                        configs: 'service.yaml',
                        kubeconfigId: 'Kubernetes_Cluster_Config'
                        )
                }

}
#Change from main branch once more
# Change ansnsdn
