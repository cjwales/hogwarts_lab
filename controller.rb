require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/student.rb')
also_reload('./models/*')

# INDEX
get "/hogwarts-students" do
  @students = Student.all()
  erb(:index)
end

# NEW
get "/hogwarts-students/new" do
  erb(:new)
end

# SHOW
get "/hogwarts-students/:id" do
  @students = Student.find(params[:id])
  erb(:show)
end

# CREATE
post "/hogwarts-students" do
  @students = Student.new(params)
  @students.save()
  erb(:create)
end
