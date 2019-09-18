require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/student.rb')
also_reload('./models/*')


get "/hogwarts-students" do
  @students = Student.all()
  erb(:index)
end

get "/hogwarts-students/new" do
  erb(:new)
end
