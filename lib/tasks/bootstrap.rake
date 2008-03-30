namespace :db do
  desc "Loads the schema.rb file into the database and then loads the initial database fixtures"
  task :bootstrap do
    mkdir_p File.join(RAILS_ROOT, 'log')
    %w(environment db:schema:load db:bootstrap:load).each { |t| Rake::Task[t].execute }
  end
  
  namespace :bootstrap do
    desc "Loads the initial database fixtures from db/bootstrap/*.yml into the current environment's database"
    task :load => :environment do
      require 'active_record/fixtures'
      ActiveRecord::Base.establish_connection(RAILS_ENV.to_sym)
      (ENV['FIXTURES'] ? ENV['FIXTURES'].split(/,/) : Dir.glob(File.join(RAILS_ROOT, 'db', 'bootstrap', '*.{yml,csv}'))).each do |fixture_file|
        Fixtures.create_fixtures('db/bootstrap', File.basename(fixture_file, '.*'))
      end
    end
    
  end
end

