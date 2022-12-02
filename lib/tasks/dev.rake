require 'faker'
namespace :dev do
  task :fake => :environment do
    Role.delete_all
    Employee.delete_all
    User.delete_all

    Role.create(name:"staff")
    Role.create(name:"manager")

    10.times do |i|
      email = Faker::Internet.email
      password = "#{123456}"
      user = User.new(email:email, password:password)
      user.save
    end

    10.times do |i|
      role = Role.first
      name = Faker::Name.name
      email = Faker::Internet.email
      emp_no = "CDN#{101+i}"
      emp = Employee.new(name: name, email: email, emp_no: emp_no, user_id: i+= 1 )
      role.employees << emp 
    end

    10.times do |i|
      name = Faker::Name.name
      email = Faker::Internet.email
      emp = Employee.new(name: name, email: email, emp_no: emp_no)
      role.employees << emp 
    end
  end
end