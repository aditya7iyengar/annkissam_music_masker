# [0, 2, 4, 5, 7, 9, 11, 12].each do |semitone|
#  AnnkissamMusicMaker::MetaMan.play_note(semitone: semitone)
# end
#
# [0, nil, nil, 2, 4, 5, 7, 9, 11, 12].each do |semitone|
#  AnnkissamMusicMaker::MetaMan.play(semitone: semitone)
# end
require 'bigdecimal'

module AnnkissamMusicMaker
  module MetaMan
    OCTO_CONSTANT = BigDecimal.new("0.00003125")

    def self.play(base: 440, semitone: 0, volume: 50, duration: 1)
      `echo "1" | awk '{ for (i = 0; i < #{duration}; i+= #{OCTO_CONSTANT}) printf("%08X\\n", #{volume}*sin(#{base * Math::PI}*exp((#{semitone}/12)*log(2))*i)) }' | xxd -r -p | aplay -c 2 -f S32_LE -r 32000 -q`
    end

    def self.compose(base: 440, semitone: 0, volume: 50, duration: 1, fl: "output")
      `echo "1" | awk '{ for (i = 0; i < #{duration}; i+= #{OCTO_CONSTANT}) printf("%08X\\n", #{volume}*sin(#{base * Math::PI}*exp((#{semitone}/12)*log(2))*i)) }' | xxd -r -p >> #{fl}`
    end
  end
end
