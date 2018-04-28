

#MP3Importer.new('./db/mp3s').import


class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    # a = File.basename(path, ".mp3") # => "xyz"
    path_ = path + "/**/*.mp3"
    b =Dir[path_].map{ |f| File.basename f }
    # c = Dir[path].select{ |f| File.file? f }.map{ |f| File.basename f }

    # binding.pry
  end

  def import
    self.files.each do |v|
      Song.new_by_filename(v)
    end

  end

end
