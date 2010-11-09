run "rm -Rf .gitignore README public/index.html public/javascripts/* app/views/layouts/* app/helpers/*"

gem 'inherited_resources'
gem 'rails3-generators', :group => :development

gem 'devise'
gem 'cancan'

gem 'haml-rails'
gem 'tabs_on_rails'
gem "breadcrumbs_on_rails"
gem 'will_paginate'

gem "shoulda", :group => :test
gem "factory_girl_rails", :group => :test
gem 'ruby-debug', :group => :test
gem 'infinity_test', :group => :test
gem 'ruby-prof', :group => :test

# run "bundle install"

# generate "devise:install"

get "https://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/jquery.rails.js"
get "https://github.com/jgrau/rails3_template/raw/master/gitignore" ,".gitignore" 
get "https://github.com/jgrau/rails3_template/raw/master/styles.css", "public/stylesheets/styles.css"
get "https://github.com/jgrau/rails3_template/raw/master/print.css", "public/stylesheets/print.css"
get "https://github.com/jgrau/rails3_template/raw/master/ie.css", "public/stylesheets/ie.css"
get "https://github.com/jgrau/rails3_template/raw/master/application.html.haml", "app/views/layouts/application.html.haml"
get "https://github.com/jgrau/rails3_template/raw/master/application_helper.rb", "app/helpers/application_helper.rb"

git :init
git :add => '.'
git :commit => '-am "Initial commit"'
 
puts "SUCCESS!"
