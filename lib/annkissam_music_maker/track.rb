module AnnkissamMusicMaker
  module Track

    DEHUMANIZED_NOTES = {
      rest: {volume: 0},
      c0: {base: 16.35},
      d_0: {base: 17.32},
      d0:	{base: 18.35},
      ds0: {base: 19.45},
      e0: {base: 20.60},
      f0: {base: 21.83},
      fs0: {base: 23.12},
      go: {base: 24.50},
      gs0: {base: 25.96},
      a0: {base: 27.50},
      as0: {base: 29.14},
      b0: {base: 30.87},
      c1: {base: 32.70},
      cs1: {base: 34.65},
      d1: {base: 36.71},
      ds1: {base: 38.89},
      e1: {base: 41.20},
      f1: {base: 43.65},
      fs1: {base: 46.25},
      g1: {base: 49.00},
      gs1: {base: 51.91},
      a1: {base: 55.00},
      as1: {base: 58.27},
      b1: {base: 61.74},
      c2: {base: 65.41},
      cs2: {base: 69.30},
      d2: {base: 73.42},
      ds2: {base: 77.78},
      e2: {base: 82.41},
      f2: {base: 87.31},
      fs2: {base: 92.50},
      g2: {base: 98.00},
      gs2: {base: 103.83},
      a2: {base: 110.00},
      as2: {base: 116.54},
      b2: {base: 123.47},
      c3: {base: 130.81},
      cs3: {base: 138.59},
      d3: {base: 146.83},
      ds3: {base: 155.56},
      e3: {base: 164.81},
      f3: {base: 174.61},
      fs3: {base: 185.00},
      g3: {base: 196.00},
      gs3: {base: 207.65},
      a3: {base: 220.00},
      as3: {base: 233.08},
      b3: {base: 246.94},
      c4: {base: 261.63},
      cs4: {base: 277.18},
      d4: {base: 293.66},
      ds4: {base: 311.13},
      e4: {base: 329.63},
      f4: {base: 349.23},
      fs4: {base: 369.99},
      g4: {base: 392.00},
      gs4: {base: 415.30},
      a4: {base: 440.00},
      as4: {base: 466.16},
      b4: {base: 493.88},
      c5: {base: 523.25},
      cs5: {base: 554.37},
      d5: {base: 587.33},
      ds5: {base: 622.25},
      e5: {base: 659.25},
      f5: {base: 698.46},
      fs5: {base: 739.99},
      g5: {base: 783.99},
      gs5: {base: 830.61},
      a5: {base: 880.00},
      as5: {base: 932.33},
      b5: {base: 987.77},
      c6: {base: 1046.50},
      cs6: {base: 1108.73},
      d6: {base: 1174.66},
      ds6: {base: 1244.51},
      e6: {base: 1318.51},
      f6: {base: 1396.91},
      fs6: {base: 1479.98},
      g6: {base: 1567.98},
      gs6: {base: 1661.22},
      a6: {base: 1760.00},
      as6: {base: 1864.66},
      b6: {base: 1975.53},
      c7: {base: 2093.00},
      cs7: {base: 2217.46},
      d7: {base: 2349.32},
      ds7: {base: 2489.02},
      e7: {base: 2637.02},
      f7: {base: 2793.83},
      fs7: {base: 2959.96},
      g7: {base: 3135.96},
      gs7: {base: 3322.44},
      a7: {base: 3520.00},
      as7: {base: 3729.31},
      b7: {base: 3951.07},
      c8: {base: 4186.01},
      cs8: {base: 4434.92},
      d8: {base: 4698.63},
      ds8: {base: 4978.03},
      e8: {base: 5274.04},
      f8: {base: 5587.65},
      fs8: {base: 5919.91},
      g8: {base: 6271.93},
      gs8: {base: 6644.88},
      a8: {base: 7040.00},
      as8: {base: 7458.62},
      b8: {base: 7902.13},
    }

    def sequence(&block)
      seq = Sequence.new()
      seq.instance_eval(&block)
      seq
    end

    def play(sequences)
      sequences.each(&:play)
    end

    def record(sequences, filename: "output.wav")
      sequences.map(&:notes).flatten.each do |note|
        note.compose(filename)
      end
    end

    class Sequence
      attr_accessor :notes

      def initialize(notes: [])
        self.notes = notes
      end

      def note(name, opts = {})
        self.notes << Note.new(DEHUMANIZED_NOTES[name].merge(opts))
      end

      def rest(opts = {})
        note(:rest, opts)
      end

      def play
        notes.each(&:play)
      end
    end
  end
end
