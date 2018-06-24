class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name

    end

  def artist_name=(artist_name)
    @artist = artist_name
  end

  def self.new_by_filename(filename)

    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
    end

end
