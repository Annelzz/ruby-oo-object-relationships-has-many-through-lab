# class Artist
#     @@all = []

#     attr_accessor :name

#     def initialize(name)
#         @name = name
#         save
#     end

#     def save
#         @@all << self
#     end

#     def new_song(name, genre)
#         Song.new(name, self, genre)
#     end

#     def songs
#         Song.all.select do |song|
#             song.artist == self
#         end
#     end

#     def genres
#         songs.collect(&:genre)
#     end

#     def self.all
#         @@all
#     end
# end
class Artist
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def new_song(name, genre)
      Song.new(name, self, genre)
    end
  
    def songs
      Song.all.select { |song| song.artist == self }
    end
  
    def genres
      songs.map(&:genre)
    end
  end
