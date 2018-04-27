require "artist.rb"

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

  end


end
