# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "tomski747"
client_key               "#{current_dir}/tomski747.pem"
validation_client_name   "bobmarlen-validator"
validation_key           "#{current_dir}/bobmarlen-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/bobmarlen"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
