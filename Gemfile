source "https://rubygems.org"
ruby "3.4.6"

gem "rails", "~> 8.1.0"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "jbuilder"
gem "propshaft"
gem "bootsnap", require: false
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  gem "sqlite3", "~> 2.7"
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :production do
  gem "pg", ">= 1.5"
end
