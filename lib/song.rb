class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    return song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    return song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    return song
  end

  def self.find_by_name(name)
    self.all.detect do |song|
      song.name = name
    end
  end

  #def self.find_or_create_by_name(name)
  #  counter = 0
  #  while counter < @@all.length
  #    self.find_by_name(name)
  #    counter += 1
  #  end
  #  self.create_by_name(name)
  #end

  #def self.alphabetical
  #  @@alphabetical = @@all.sort_by { |name| name }
  #end

  def self.destroy_all
    @@all.clear
  end

end

#song_1 = Song.create_by_name("Lemonade")
#song_2 = Song.create_by_name("Hello")
#song_3 = Song.create_by_name("Blank Space")
#song_4 = Song.create_by_name("Banana Pancake")
#song_5 = Song.create_by_name("Locked Out of Heaven")
#Song.alphabetical
