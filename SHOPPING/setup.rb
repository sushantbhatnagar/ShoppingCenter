

ENV['OZ_APP_NAME'] = 'SHOPPING'
ENV['OZ_CONFIG_DIR'] = "#{File.dirname(__FILE__)}/config"

require_relative '../CORE/setup.rb'

require_relative '../SHOPPING/pages/shopping_root_page.rb'
recursively_require_all_base_pages('../SHOPPING/pages')
recursively_require_all_edge_pages('../SHOPPING/pages')

require_all('../SHOPPING/step_definitions') if defined?(Cucumber)