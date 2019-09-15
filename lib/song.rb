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
  self.all << song
  song
end

def self.new_by_name(title)
  song = self.new
  song.name = title
  song
end

def self.create_by_name(title)
  song = self.create
  song.name = title
  song
end

def self.alphabetical
  sorted = self.all.sort_by {|song| song.name}
  sorted
  end

def self.find_by_name(title)
  result = self.all.detect {|song| song.name == title}
  result
end

def self.create_from_filename(filename)
  result = self.new_from_filename(filename)
  song = self.create
  song.name = result.name
  song.artist_name = result.artist_name
  song
end

end
