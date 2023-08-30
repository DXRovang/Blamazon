require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
# Initialize the Rails environment and database
ActiveRecord::Migration.check_pending!
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

end
