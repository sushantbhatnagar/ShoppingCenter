pipeline{
	agent any

	stages{
		stage('Running Ruby script') {
			steps {
				echo 'Ruby Cucumber'
				sh 'ruby --version'
				sh 'bundle install'
			}
		}
		stage('Test') {
			steps{
				echo 'Testing...'
			}
		}
	}
}