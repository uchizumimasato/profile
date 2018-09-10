source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.7'
gem 'mysql2', '>= 0.3.18', '< 0.6.0'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'pry-rails'
gem 'rb-readline'
gem 'erb2haml'
gem 'haml-rails'
gem 'devise'
gem 'materialize-sass'
gem "font-awesome-rails"
gem 'omniauth'
gem 'omniauth-facebook'
gem 'dotenv-rails'

group :development, :test do 
  gem 'byebug', platform: :mri
end

group :development do 
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5' 
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  ruby '2.4.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

