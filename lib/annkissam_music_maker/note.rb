module AnnkissamMusicMaker
  class Note
    attr_accessor :base,
                  :semitone,
                  :volume,
                  :duration

    def initialize(base: 440, semitone: 0, volume: 50, duration: 1)
      self.base = base
      self.semitone = semitone
      self.volume = volume
      self.duration = duration
    end

    def play
      AnnkissamMusicMaker::MetaMan.play(
        base: self.base,
        semitone: self.semitone,
        volume: self.volume,
        duration: self.duration
      )
    end

    def compose(file)
      AnnkissamMusicMaker::MetaMan.compose(
        fl: file,
        base: self.base,
        semitone: self.semitone,
        volume: self.volume,
        duration: self.duration
      )
    end
  end
end
