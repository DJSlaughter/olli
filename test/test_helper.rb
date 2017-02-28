ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all
end
RUBYfolders=(controllers fixtures helpers integration mailers models)
for dir in "controllers fixtures helpers integration mailers models"; do mkdir -p "test/models" && touch "test/models/.keep"; done
cat >test/test_helper.rb <<RUBY
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all
end

