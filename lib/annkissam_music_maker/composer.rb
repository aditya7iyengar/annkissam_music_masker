module AnnkissamMusicMaker
  module Composer
    def self.play_track(track)
      track.notes do |note|
        play_note(note)
      end
    end

    def self.play_note(note)
      `echo "1" | awk '{ for (i = 0; i < 1; i+= 0.0001) printf("%08X\\n", #{note.volume}*sin(#{note.base * Math::PI}*exp((#{note.semitone}/12)*log(2))*i)) }' | xxd -r -p | aplay -c 2 -f S32_LE -r 16000`
    end

    def self.convert_to_hexable(note)
      hex = ""
      i = 0.0

      while i < 1.0
        hex << ("%08x" % [note.volume * Math.sin(note.base * Math::PI * (2**(note.semitone/12)) * i)].pack("d")[0].hex)
        hex << "\n"
        i += 0.0001
      end

      hex
    end
  end
end
