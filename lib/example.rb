include AnnkissamMusicMaker::Track

intro = sequence do
  note :c4, volume: 20, duration: 0.1
  note :d4, volume: 20, duration: 0.1
  note :e4, volume: 20, duration: 0.1
  note :f4, volume: 20, duration: 0.1
  note :g4, volume: 100, duration: 0.1
  rest
  note :d4, volume: 20, duration: 0.1
  note :e4, volume: 20, duration: 0.1
  note :f4, volume: 20, duration: 0.1
  note :g4, volume: 20, duration: 0.1
  note :a4, volume: 100, duration: 0.1
end

outro = sequence do
  note :g4, volume: 20, duration: 0.1
  note :f4, volume: 20, duration: 0.1
  note :e4, volume: 20, duration: 0.1
  note :d4, volume: 20, duration: 0.1
  note :c4, volume: 100, duration: 0.1
  rest
  note :a4, volume: 20, duration: 0.1
  note :g4, volume: 20, duration: 0.1
  note :f4, volume: 20, duration: 0.1
  note :e4, volume: 20, duration: 0.1
  note :d4, volume: 100, duration: 0.1
end

play [intro, outro]
