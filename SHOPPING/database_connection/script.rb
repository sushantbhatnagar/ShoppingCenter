# require 'pg'
# require 'active_record'
# require 'active_model'
# require 'yaml'
# require 'json'
# require_relative 'suite_data'
#
# config = YAML::load("#{Dir.pwd}/SHOPPING/config/database.yml")
#
# ActiveRecord::Base.establish_connection(config)
# #     :adapter  => 'postgresql',
# #     :host     => 'localhost',
# #     :username => 'postgres',
# #     :password => 'example'
# #     # :database => "somedatabase"
# # "jdbc:postgresql://localhost:5432/postgres"
# # )
#
# data = {login: 'success', user: 1}.to_json
# data_to_store = SuiteData.new(scenario: 1, test_case: 1, data: data)
# data_to_store.save!
#
# puts SuiteData.all.to_yaml
