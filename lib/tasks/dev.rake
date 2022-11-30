require 'faker'
namespace :dev do
  task :fake => :environment do
    Role.delete_all
    Employee.delete_all

    Role.create(name:"staff")
    Role.create(name:"manager")

    10.times do |i|
      role = Role.first
      name = Faker::Name.name
      email = Faker::Internet.email
      emp_no = "CDN#{101+i}"
      emp = Employee.new(name: name, email: email, emp_no: emp_no)
      role.employees << emp 
    end

    2.times do |i|
      role = Role.find(2)
      name = Faker::Name.name
      email = Faker::Internet.email
      emp_no = "CDN#{200+i}"
      emp = Employee.new(name: name, email: email, emp_no: emp_no)
      role.employees << emp 
    end
  end
end