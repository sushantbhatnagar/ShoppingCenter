ENV['OZ_APP_NAME'] = 'SHOPPING'
ENV['OZ_CONFIG_DIR'] = "#{File.dirname(__FILE__)}/config"

require_relative '../CORE/setup.rb'

require_relative '../SHOPPING/pages/shopping_root_page.rb'
require_relative '../SHOPPING/overrides/elements/select_list.rb'
require_relative '../SHOPPING/overrides/world_gadgets/ledger.rb'

require_relative '../SHOPPING/database_connection/Gemfile'
require_relative '../SHOPPING/database_connection/script.rb'
require_relative '../SHOPPING/database_connection/suite_data.rb'
require_relative '../SHOPPING/config/database.yml'
# require_relative '../SHOPPING/database_connection/database.yml'

recursively_require_all_base_pages('../SHOPPING/pages')
recursively_require_all_edge_pages('../SHOPPING/pages')

require_all('../SHOPPING/step_definitions') if defined?(Cucumber)