# [0, 2, 4, 5, 7, 9, 11, 12].each do |semitone|
#  AnnkissamMusicMaker::MetaMan.play_note(semitone: semitone)
# end
module AnnkissamMusicMaker
  module MetaMan
    # 440 => A4
    def self.play_note(base: 440, semitone: 0, volume: 50)
      `echo "1" | awk '{ for (i = 0; i < 1; i+= 0.0001) printf("%08X\\n", #{volume}*sin(#{base * Math::PI}*exp((#{semitone}/12)*log(2))*i)) }' | xxd -r -p | aplay -c 2 -f S32_LE -r 16000`
    end

    def self.compose_note(base: 440, semitone: 0, volume: 50, fl:)
      `echo "1" | awk '{ for (i = 0; i < 1; i+= 0.0001) printf("%08X\\n", #{volume}*sin(#{base * Math::PI}*exp((#{semitone}/12)*log(2))*i)) }' | xxd -r -p >> #{fl}`
    end
  end
end
