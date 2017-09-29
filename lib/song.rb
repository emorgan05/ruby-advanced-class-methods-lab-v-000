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
    @@all.each do |song|
      if song.name == name
        return song
      end
    end
  end

  def self.find_or_create_by_name(name)
    counter = 0
    while counter < @@all.length
      self.find_by_name(name)
      counter += 1
    end
    self.create_by_name(name)
  end

  def self.alphabetical
    @@alphabetical = @@all.sort_by { |name| name1 <=> name2 }
  end

  def self.destroy_all
    @@all.clear
  end

end
