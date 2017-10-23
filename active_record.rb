# Database
class Data < ActiveRecord::Base
  self.abstract_class = true
  establish_connection(
    adapter:    'postgresql',
    schema_search_path: 'public',
    database:   $config['app']['database'],
    host:       $config['app']['host'],
    username:   $config['app']['username'],
    password:   $config['app']['password'],
    port:       $config['app']['port']
  )
end

class FooBar < Data
    self.table_name = "foo_bar"
end
