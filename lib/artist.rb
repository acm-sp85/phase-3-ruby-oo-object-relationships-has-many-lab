class Artist
    attr_accessor :name
    @@total_of_songs = 0
    def initialize(name)
      @name = name
      @songs = []
    end
    
    def add_song(song)
        @songs << song
        song.artist = self
    end
    
    def songs
        Song.all.filter{|song| song.artist == self}
    end
    
    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def self.song_count
        @@total_of_songs = Song.all.length 
    end
  end 