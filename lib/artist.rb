class Artist
  attr_accessor :name

  def initialize(name)
    @songs = []
    @name = name
  end

  def songs
    @songs
  end

  def genres
    @songs.map { |song| song.genre }
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

end
