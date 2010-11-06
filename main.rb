run "rm -Rf .gitignore README public/index.html public/javascripts/* app/views/layouts/*"

gem 'inherited_resources'
gem 'rails3-generators', :group => :development

gem 'devise'
gem 'cancan'

gem 'haml'
gem 'tabs_on_rails'
gem "breadcrumbs_on_rails"
gem 'will_paginate'

gem "shoulda", :group => :test
gem "factory_girl_rails", :group => :test
gem 'ruby-debug', :group => :test
gem 'infinity_test', :group => :test
gem 'ruby-prof', :group => :test

run "bundle install"

generate "devise:install"

get "http://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/jquery.rails.js"
get "http://github.com/jgrau/rails3_template/raw/master/gitignore" ,".gitignore" 
get "http://github.com/jgrau/rails3_template/raw/master/styles.css", "app/stylesheets/styles.css"
get "http://github.com/jgrau/rails3_template/raw/master/print.css", "app/stylesheets/print.css"
get "http://github.com/jgrau/rails3_template/raw/master/ie.css", "app/stylesheets/ie.css"
get "http://github.com/jgrau/rails3_template/raw/master/application.html.haml", "app/views/layouts/application.html.haml"

git :init
git :add => '.'
git :commit => '-am "Initial commit"'
 
puts "SUCCESS!"
