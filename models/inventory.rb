require_relative( '../db/sql_runner' )

class Inventory

  attr_reader( :id, :artist_id, :record_id )

  def initialize( options )
    @id = options['id'].to_i
    @artist_id = options['artist_id']
    @record_id = options['record_id']
  end

  def save()
    sql = "INSERT INTO inventorys (
    artist_id, record_id) VALUES ('#{artist_id}', '#{record_id}') RETURNING *;"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * from inventorys;"
    results = SqlRunner.run(sql)
    return results.map {|hash| Inventory.new(hash)}
  end

  def artist
    sql = "SELECT * FROM artists a INNER JOIN inventorys i ON i.artist_id = a.id WHERE a.id = #{artist_id};"
    results = SqlRunner.run(sql)
    return Artist.new(results.first)
  end

  def record
    sql = "SELECT * from records r INNER JOIN inventorys i on i.record_id = r.id WHERE r.id = #{record_id};"
    results = SqlRunner.run(sql)
    return Record.new(results.first)
  end



end # END of CLASS