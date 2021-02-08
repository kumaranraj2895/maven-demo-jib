def call(body) {
    def config = [:]
    body.resolveStrategy = Closure.DELEGATE_FIRST
    body.delegate = config
    body()

    node {
	    try {
	        stage ('clean') {
	        	sh "mvn clean -f pom.xml"
	        }
		stage ('validate') {
	        	sh "mvn validate -f pom.xml"
	        }
		stage ('install') {
	        	sh "mvn install -f pom.xml"
	        }
	    } catch (err) {
	        currentBuild.result = 'FAILED'
	        throw err
	    }
    }
}


