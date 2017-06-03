source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


############## Custom ###################
#Add bootstrap. bundle inst then run generator rails generate bootstrap:install static
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'


#Install Font awesome
#https://github.com/bokmann/font-awesome-rails
gem "font-awesome-rails"


#Install simple form for bootstrap bundle then "rails g simple_form:install --bootstrap"
gem 'simple_form'

#Install Devise
#https://github.com/plataformatec/devise
#bundle then rails g devise:install => rails g devise:views  => rake db:migrate  
#add timezone rails g migration AddTimeZoneToUsers time_zone:string.  Add to user model validates_presence_of :time_zone   
gem 'devise'  

#store oAuth credentials
gem 'dotenv-rails', groups:[:development]

#omniauth
#create a new file omniauth.rb in the app/config/initializers folder
# create model -> run rails g model connection provider:string oauth_token:string secret:string user_id:integer
# update connections and user model
# create controller -> rails g controller connections create destroy --skip-template-engine
#twitter gem
gem 'omniauth-twitter'
#facebook gem
gem 'omniauth-facebook'

#make sure you can't schedule a post for a date earlier than today
#https://github.com/adzap/timeliness
gem 'validates_timeliness', '~>3.0'

#add date time picker to the date fields for easy to select scheduling
#add to application.js and application.css
#run generator... rails g datetimepicker_rails:install Font-Awesome
gem 'datetimepicker-rails', github: 'zpaulovics/datetimepicker-rails', branch: 'master', submodules: true
gem 'momentjs-rails', '~> 2.9',  :github => 'derekprior/momentjs-rails'