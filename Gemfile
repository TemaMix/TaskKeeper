source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'


ruby '2.0.0'


#DATABASE LAYER AND FULLFILLMENT
# Use sqlite3 as the database for Active Record
gem 'squeel'
gem 'active_model_serializers'
gem "sqlite3"
gem "schema_plus"
#gem 'acts_as_list'

#MODEL HELPER
gem 'annotate', ">=2.6.0"
gem 'validates_lengths_from_database'


#PROVISIONING
gem 'zentask'

#TEMPLATES
gem "slim-rails"


##VIEW HELPERS
gem 'draper'

##NAVIGATION CONFIGURATION AND RENDERING
gem 'simple-navigation'


#ACCESS MANAGEMENT
gem 'devise', '>= 3.0.0.rc'
gem 'devise-i18n-views'
gem 'inherited_resources'
gem 'has_scope'

#ASSETS
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-migrate-rails'
gem 'sass', '>= 3.2.9'
gem 'quiet_assets'
gem 'turbolinks'
gem 'sass-rails'

gem 'coffee-rails', '>= 3.2.1'
#gem 'chosen-rails'
gem 'bourbon'


gem 'uglifier', '>= 1.0.3'

gem 'angularjs-rails'
gem 'ng-rails-csrf'
gem 'therubyracer'

gem "twitter-bootstrap-rails"




group :development do
  gem 'quiet_assets'
  gem 'thin'
  gem 'bullet'
  gem 'haml'
  gem "erb2haml"
end

group :test, :development do
  gem 'rspec-rails', '~> 3.0.0.beta'  # rails generate rspec:install
  gem 'factory_girl_rails'
  gem "better_errors"
  gem "binding_of_caller"
end

group :test do
  gem 'database_cleaner'
end

group :production do
  gem 'unicorn'
end
