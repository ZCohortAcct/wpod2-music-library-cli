class Genre
  attr_accessor :name
  @@all = []

  def initialize(genre_name)
    @name = genre_name
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

  def self.create(name_of_genre)
    genre_obj = self.new(name_of_genre) 
    genre_obj.save 
    genre_obj
  end
end