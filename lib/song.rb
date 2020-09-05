class Song
  attr_accessor :name, :album
  attr_reader :id

  def initialize(id=nil, name, album)
    @id = id
    @name = name
    @album = album
  end

  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS songs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        album TEXT
        )
    SQL
  DB[:conn].execute("SELECT * FROM songs LIMIT 1")
  end
end
