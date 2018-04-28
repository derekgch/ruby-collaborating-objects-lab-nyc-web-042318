require "artist.rb"
require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name =  name

  end

  def artist=(art)
    @artist = art

  end

  def self.new_by_filename(filename)
    filename = filename.rstrip
    filename = filename[0,filename.index(".")]
    temp = filename.split(" - ")

    song = self.new(temp[1])
    ar=Artist.find_or_create_by_name(temp[0])
    song.artist = ar
    ar.songs << song
    song
    # binding.pry
  end


end
