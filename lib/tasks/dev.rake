require 'faker'
namespace :dev do
  task :fake => :environment do
    # Role.delete_all
    
    # Role.create!(name:"staff")
    # Role.create!(name:"manager")
    # p Role.all
    p Faker::Name.name
  end
end