require "song"

class Artist

  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def name=(name)
    @name = name

  end

  def add_song(song_1)
    @songs << song_1

  end

  def save
    @@all << self

  end

  def self.all
      @@all
  end

  def self.find_or_create_by_name(name)
    k= @@all.find do |v|
      v.name == name
    end

    if k == nil
       k = Artist.new(name)
    else
      k
    end
  end

  def print_songs
    songs.each do |n|
      puts n.name
    end

  end


end
