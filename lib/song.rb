require 'pry'
require_relative 'artist.rb'

class Song
    attr_accessor :name, :artist, :owner

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end

    def self.new_by_filename(file)
        file.slice! ".mp3"
        a = file.split(/ - /)
        song = Song.new(a[1])
        song.artist= Artist.new(a[0])
        return song
    end

    def artist_name=(name)
        artist= Artist.find_or_create_by_name(name)
        self.artist= artist
    end

end