# note = AnnkissamMusicMaker::Track::Note.new()
# AnnkissamMusicMaker::Composer.play_note(note)
module AnnkissamMusicMaker
  class Track
    attr_accessor :notes

    def initialize(notes: [])
      self.notes = notes
    end

    class Note
      attr_accessor :base,
                    :semitone,
                    :volume
                    # instrument

      def initialize(base: 440, semitone: 0, volume: 50)
        self.base = base
        self.semitone = semitone
        self.volume = volume
      end
    end
  end
end
