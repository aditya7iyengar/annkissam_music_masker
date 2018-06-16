include AnnkissamMusicMaker::Track

intro = sequence do
  note :e4, duration: 0.1
  note :e4, duration: 0.1
  rest duration: 0.1
  note :e4, duration: 0.1, volume: 75
  rest duration: 0.1
  note :c4, duration: 0.1
  note :e4, duration: 0.1
  rest duration: 0.1
  note :g4, duration: 0.2
  rest duration: 0.2
  note :g3, duration: 0.2
end

break8 = sequence do
  rest duration: 0.8
end

break4 = sequence do
  rest duration: 0.4
end

second = sequence do
  note :c4, duration: 0.1
  rest duration: 0.4
  note :g3, duration: 0.1
  rest duration: 0.4
  note :e3, duration: 0.1
  rest duration: 0.4
  note :a3, duration: 0.1
  rest duration: 0.2
  note :b3, duration: 0.1
  rest duration: 0.1
  note :as3, duration: 0.1
  note :a3, duration: 0.1
  rest duration: 0.2
  note :g3, duration: 0.1
  note :e4, duration: 0.1
  rest duration: 0.1
  note :g4, duration: 0.1
  note :a4, duration: 0.1
  rest duration: 0.1
  note :f4, duration: 0.1
  note :g4, duration: 0.1
  rest duration: 0.1
  note :e4, duration: 0.1
  note :c4, duration: 0.1
  rest duration: 0.1
  note :d4, duration: 0.1
  note :b3, duration: 0.1
end

third = sequence do
  note :g4, duration: 0.1
  note :fs4, duration: 0.1
  note :f4, duration: 0.1
  note :ds4, duration: 0.1
  note :e4, duration: 0.2
  rest duration: 0.2
  note :a3, duration: 0.1
  note :a3, duration: 0.1
  note :c4, duration: 0.1
  rest duration: 0.1
  note :a3, duration: 0.1
  note :c4, duration: 0.1
  note :d4, duration: 0.1
end

fourth = sequence do
  note :g4, duration: 0.1
  note :fs4, duration: 0.1
  note :f4, duration: 0.1
  note :ds4, duration: 0.1
  note :e4, duration: 0.2
  rest duration: 0.2
  note :c5, duration: 0.1
  note :c5, duration: 0.1
  note :c5, duration: 0.1
end

fifth = sequence do
  note :ds4, duration: 0.2
  rest duration: 0.1
  note :d4, duration: 0.2
  rest duration: 0.1
  note :c4, duration: 0.2
end

sixth = sequence do
  note :c4, duration: 0.1
  note :c4, duration: 0.1
  rest duration: 0.1
  note :c4, duration: 0.1
  rest duration: 0.4
  note :d4, duration: 0.1
end

seventh = sequence do
  note :e4, duration: 0.1
  note :c4, duration: 0.1
  rest duration: 0.2
  note :a3, duration: 0.1
  note :g3, duration: 0.1
end

song = [intro,
        break8,
        second,
        break4,
        second,
        break8,
        third,
        break4,
        fourth,
        break8,
        third,
        break4,
        fifth,
        break8,
        sixth,
        seventh,
        break4,
        sixth,
        break8,
        break4,
        sixth,
        seventh,
        break4,
        intro]

record song
