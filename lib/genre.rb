class Genre
    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        songs.map(&:artist)
    end



    def self.all
        @@all
    end
end



