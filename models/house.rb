require_relative('../db/sql_runner.rb')

class House

  attr_reader :id
  attr_accessor :name, :student_id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
  end


  def save()
    sql = "INSERT INTO houses (name) VALUES ($1) RETURNING id"
    values = [@name]
    result = SqlRunner.run(sql, values)
    id = result.first['id']
    @id = id
  end

  def self.find_house_by_id(id)
    sql = "SELECT * FROM houses WHERE id =$1"
    values = [id]
    results = SqlRunner.run(sql, values)
    result_hash = results.first()
    result = Student.new(result_hash)
    return result
  end


end
