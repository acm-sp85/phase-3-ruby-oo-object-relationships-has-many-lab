class Song
    attr_accessor :artist, :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end
    def save
        @@all << self
    end


    def self.all
        @@all
    end

    def artist_name

        finding = @@all.find{|song| song.name == self.name}
        if finding.artist.name
            return finding.artist.name
        else
            return nil
        end

    end

end