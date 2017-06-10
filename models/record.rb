require_relative( '../db/sql_runner' )

class Record

  attr_reader( :id, :title, :type, :quantity, :cover_url, :genre, :release_year )

  def initialize( options )
    @id = options['id'].to_i
    @title = options['title']
    @type = options['type']
    @quantity = options['quantity']
    @cover_url = options['cover_url']
    @genre = options['genre']
    @release_year = options['release_year']
  end

  def save
    sql = "INSERT INTO records (title, type, quantity, cover_url, genre, release_year) VALUES ('#{title}', '#{type}', #{quantity}, '#{cover_url}', '#{genre}', #{release_year}) RETURNING * ;"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM records;"
    results = SqlRunner.run(sql)
    return results.map { |hash| Record.new(hash)}
  end

  def self.find(id)
    sql = "SELECT * FROM records WHERE id=#{id};"
    results = SqlRunner.run(sql)
    return Record.new(results.first)
  end

  def self.delete_all
    sql = "DELETE FROM records;"
    SqlRunner.run(sql)
  end

  def delete_1
    sql = "DELETE FROM records WHERE id=#{id};"
    SqlRunner.run(sql)
  end




end # END of CLASS
