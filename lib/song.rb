require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    # class method that returns a hash of genres and the number of songs that have those genres

    def self.genre_count
        self.genres.each_with_object({}) do |genre, final_hash| 
            final_hash[genre] = @@genres.count(genre)
        end
    end

    def self.artist_count
        self.artists.each_with_object({}) do |artist, final_hash| 
            final_hash[artist] = @@artists.count(artist)
        end
    end
end