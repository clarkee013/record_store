require_relative( '../db/sql_runner' )

class Artist

  attr_accessor( :name, :id )

def initialize (options)
  @id = options['id'].to_i
  @name = options['name']
end

def save()
  sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING *;"
  results = SqlRunner.run(sql)
  @id = results.first()['id'].to_i
end

def update()
  sql = "UPDATE artists SET name = '#{@name}' WHERE id = #{id};"
  SqlRunner.run(sql)
end

def self.all()
  sql = "SELECT * FROM artists;"
  results = SqlRunner.run(sql)
  return results.map {|hash| Artist.new(hash)}
end

def self.find(id)
  sql = "SELECT * FROM artists WHERE id=#{id};"
  results = SqlRunner.run(sql)
  return Artist.new(results.first)
end

def self.delete_all
  sql = "DELETE FROM artists;"
  SqlRunner.run(sql)
end


end # END of CLASS