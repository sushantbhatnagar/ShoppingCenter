pipeline{
	agent any

	stages{
		stage('Running Ruby script') {
			steps {
				echo 'Ruby Cucumber'
				bat 'ruby --version'
				bat 'bundle install'
			}
		}
		stage('Test') {
			steps{
				echo 'Testing...'
			}
		}
	}
}