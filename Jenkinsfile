pipeline{
	agent { docker: 'ruby 2.3.3' }

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
