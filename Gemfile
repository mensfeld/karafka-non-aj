source 'https://rubygems.org'

ruby '3.1.0'

# === CORE ====================================================================
gem 'activerecord',                                                   '6.1.4.1'
gem 'activesupport',                                                  '6.1.4.1'
# Uncomment this to make it work
# gem 'activejob',                                                      '6.1.4.1'
gem 'bootsnap',                                        '1.11.1', require: false
gem 'puma',                                                             '5.6.2'
gem 'railties',                                                       '6.1.4.1'

# === DATABASE ================================================================
gem 'mysql2',                                                           '0.5.3'

# === BACKGROUND PROCESSING ===================================================
# gem 'karafka',                                                   '2.0.0.alpha3'
gem 'karafka', git: 'https://github.com/karafka/karafka.git', branch: 'non-aj-rails-support'

# === DEV & TEST ==============================================================
group :development, :test do
  gem 'byebug',                    '11.1.3', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails',                                                    '5.1.1'
end

group :development do
  gem 'listen',                                                         '3.7.1'
  gem 'spring',                                                         '2.1.1'
  gem 'spring-watcher-listen',                                          '2.0.1'
end

group :test do
  gem 'karafka-testing',                                         '2.0.0.alpha3'
  gem 'rake',                                                          '12.3.3'
end
