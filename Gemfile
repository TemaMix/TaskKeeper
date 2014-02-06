source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'


ruby '2.0.0'


#DATABASE LAYER AND FULLFILLMENT
gem 'active_model_serializers'
gem "sqlite3"
gem "schema_plus"
#gem 'acts_as_list'

#MODEL HELPER
gem 'validates_lengths_from_database'



#TEMPLATES
gem "slim-rails"



#ASSETS
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-migrate-rails'
gem 'quiet_assets'
gem 'turbolinks'

gem 'coffee-rails', '>= 3.2.1'
#gem 'chosen-rails'


gem 'uglifier', '>= 1.0.3'

# ANGULAR
gem 'angularjs-rails-resource', '~> 1.0.1'
gem 'angularjs-rails'
gem 'ng-rails-csrf'

# BOOTSTRAP
gem 'therubyracer'
gem "twitter-bootstrap-rails"
gem "less-rails"




group :development do
  gem 'quiet_assets'
  gem 'thin'
  gem 'bullet'
  gem 'haml'
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
