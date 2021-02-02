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

def self.genres
    @@genres.uniq{|x| x}
end

def self.artists
    @@artists.uniq{|x| x}
end

def self.genre_count
genre_hash = {}
    @@genres.each do |el|
        if genre_hash.key?(el)
        genre_hash[el] +=1
        else
        genre_hash[el]=1
        end
    end
genre_hash  
end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |el|
            if artist_hash.key?(el)
            artist_hash[el] +=1
            else
            artist_hash[el]=1
            end
        end
    artist_hash 
    end


end