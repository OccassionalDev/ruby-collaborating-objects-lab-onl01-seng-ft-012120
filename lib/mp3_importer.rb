class MP3Importer 
  attr_accessor :path 
  
  def initialize(file_location)
    @path = file_location
  end 
  
  def files 
    @files = Dir.glob("#{@path}/*.mp3")
    
    @files.collect do |file|
      file.gsub("#{@path}/", "")
    end 
  end 
  
  def import 
    self.files.each do |file|
      Song.new_by_filename(file)
    end 
  end 
end 