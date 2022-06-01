require 'pry'
require_relative 'song.rb'


class MP3Importer

    attr_accessor :path

    def initialize(file)
        @path = file 
    end 

    def files
       files = Dir.entries("#{@path}")
       files.drop(2)
    end

    def import
        self.files.each { |file| Song.new_by_filename(file)}
    end 

end 