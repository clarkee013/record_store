require_relative( '../db/sql_runner' )

class Record

  attr_reader( :id, :artist_id, :title, :type, :quantity, :cover_url, :genre, :release_year )

  def initialize( options )
    @id = options['id'].to_i
    @artist_id = options['artist_id'].to_i
    @title = options['title']
    @type = options['type']
    @quantity = options['quantity'].to_i
    @cover_url = options['cover_url']
    @genre = options['genre']
    @release_year = options['release_year'].to_i
  end

  def save
    sql = "INSERT INTO records (artist_id, title, type, quantity, cover_url, genre, release_year) VALUES (#{artist_id}, '#{title}', '#{type}', #{quantity}, '#{cover_url}', '#{genre}', #{release_year}) RETURNING * ;"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def update_title()
    sql = "UPDATE records SET title = '#{@title}' WHERE id = #{id};"
    SqlRunner.run(sql)
  end

  def update_type()
    sql = "UPDATE records SET type = '#{@type}' WHERE id = #{id};"
    SqlRunner.run(sql)
  end

  def update_quantity()
    sql = "UPDATE records SET quantity = '#{@quantity}' WHERE id = #{id};"
    SqlRunner.run(sql)
  end

  def update_cover_url()
    sql = "UPDATE records SET cover_url = '#{@cover_url}' WHERE id = #{id};"
    SqlRunner.run(sql)
  end

  def update_genre()
    sql = "UPDATE records SET genre = '#{@genre}' WHERE id = #{id};"
    SqlRunner.run(sql)
  end

  def update_release_year()
    sql = "UPDATE records SET release_year = '#{@release_year}' WHERE id = #{id};"
    SqlRunner.run(sql)
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

  def self.single_delete(id)
    sql = "DELETE FROM records WHERE id = #{id};"
    SqlRunner.run(sql)
  end


  def stock_level()
    case @quantity
    when 1..3
      return "Low!"
    when 4..7 
      return "OK!"
    else 
      return "High!"
    end
  end


end # END of CLASS
