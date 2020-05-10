# A sample Gemfile
source "https://rubygems.org"

gem 'sinatra'
gem 'thin'
gem 'require_all'
gem 'activerecord', '5.2'
  #gives us access to the magical database mapping and association powers.
gem 'sinatra-activerecord'
  #gives us access to some awesome Rake tasks.
gem 'rake'
  #short for "ruby make", is a package that lets us quickly create files and folders, and automate tasks such as database creation


group :development do
	gem 'shotgun'
	gem 'pry'
	gem 'tux'
	  #tux will give us an interactive console that pre-loads our database and ActiveRecord relationships for us. Since we won't use either of these in production, we put them in our :development group - this way, they won't get installed on our server when we deploy our application.
  gem 'sqlite3', '~> 1.3.6'
    #sqlite3 is our database adapter gem - it's what allows our Ruby application to communicate with a SQL database
end