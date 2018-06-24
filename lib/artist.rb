class Artist
  attr_accessor :name, :songs
  @@all =[]
  def initialize(name)
    @name = name
    @songs = []

  end
  def self.all
    @@all
  end
  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
     find = self.all.find{|a| a.name.to_s == name}
     find.nil? ? Artist.new(name) : find
  end

  def print_songs
   self.songs.map{|s| puts s.name}
 end

end
