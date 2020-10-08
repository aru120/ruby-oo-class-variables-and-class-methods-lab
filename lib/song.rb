require 'pry'
class Song

attr_accessor :name, :artist, :genre
    
   
    @@genres = []
    @@artists = []
    @@count = 0

    def initialize(name,artist,genre)
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

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genrehash = {}

        @@genres.each do |genre|
           if genrehash[genre] 
            genrehash[genre] += 1
           else
            genrehash[genre] = 1
           end
         end
         genrehash
    end

    def self.artist_count
        artisthash = {}

        @@artists.each do |artist|
            if artisthash[artist]
                artisthash[artist] += 1
            else
                artisthash[artist] = 1
            end
        end
        artisthash
    end


end
