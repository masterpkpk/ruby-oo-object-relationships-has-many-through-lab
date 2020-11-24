
class Artist

    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        save
    end
    
    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end
    
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

end
