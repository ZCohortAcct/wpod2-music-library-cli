require 'pry'
#artist has many songs
#song belongs to artist
class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []

  def initialize(song_name, artist_obj = nil)
    @name = song_name

    # @artist = artist_obj

    self.artist = artist_obj if artist_obj
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end 

  def save
    @@all << self
  end

  def self.create(name_of_song)
    song_obj = self.new(name_of_song) # instinate an obj
    song_obj.save #saving the obj, AKA telling the class about the obj
    song_obj # explict return val, return song_obj
  end

  def artist=(artist_instance)
    # binding.pry
    @artist = artist_instance
    artist_instance.add_song(self) 
  end 
end