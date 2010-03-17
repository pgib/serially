source :gemcutter
gem "rails", "~> 2.3.5", :require => nil
gem "sqlite3-ruby", :require => "sqlite3"
gem "will_paginate", "~> 2.2", :lib => "will_paginate", :git => "git://github.com/mislav/will_paginate"
 
 
# Devise 1.0.2 is not a valid gem plugin for Rails, so use git until 1.0.3
# gem "devise", :git => "git://github.com/plataformatec/devise.git", :ref => "v1.0"
 
group :development do
  # bundler requires these gems in development
  #gem 'rails-footnotes'
end
 
group :test do
  # bundler requires these gems while running tests
  gem 'rspec'
end
