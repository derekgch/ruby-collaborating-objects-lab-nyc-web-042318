# require_relative "artist.rb"
# require_relative "song.rb"
# require_relative "../lib/mp3_importer.rb"

require "pry"

#MP3Importer.new('./db/mp3s').import


class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files

     a = File.basename(path, ".mp3") # => "xyz"
     e =Dir[path]
    path_ = path + "/**/*.mp3"
    path2 = path + "/**/*"
    b =Dir[path_].map{ |f| File.basename(f,".mp3") }
    d =Dir[path2].map{ |f| File.basename f }
    c = Dir[path_].select{ |f| File.file? f }.map{ |f| File.basename f }
    f = Dir[path_].select{ |f| File.extname == ".mp3" }.map{ |f| File.basename f } 

    binding.pry
  end

  # def import
  #   self.files.each do |v|
  #     Song.new_by_filename(v)
  #   end
  #
  # end

end

MP3Importer.new('./db/test').files
