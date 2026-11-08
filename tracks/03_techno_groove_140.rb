# TECHNO GROOVE — reconstructed edition
# Based on August 30–31, 2026 collaboration notes. Not original recovered source.
# Sonic Pi 4.5+ | 140 BPM | F# tonal center
use_bpm 140
use_debug false

live_loop :kick do
  sample :bd_tek, amp: 1.7
  sleep 1
end

live_loop :hats do
  8.times do |i|
    sample :drum_cymbal_closed, finish: 0.07, amp: (i.odd? ? 0.4 : 0.16)
    sleep 0.5
  end
end

live_loop :fast_hats do
  16.times do |i|
    sample :drum_cymbal_closed, finish: 0.025, amp: (i % 4 == 3 ? 0.16 : 0.06)
    sleep 0.25
  end
end

live_loop :bass do
  use_synth :dsaw
  with_fx :distortion, distort: 0.24, mix: 0.5 do
    (ring :fs2, :fs2, :r, :fs2, :a2, :fs2, :e2, :fs2).each do |n|
      play n, release: 0.16, cutoff: 68, amp: 0.46 unless n == :r
      sleep 0.5
    end
  end
end

live_loop :prophet_stab do
  use_synth :prophet
  with_fx :reverb, mix: 0.35 do
    sleep 0.5
    play chord(:fs3, :minor), release: 0.24, cutoff: 88, amp: 0.4
    sleep 1.5
    play chord(:e3, :major), release: 0.24, cutoff: 88, amp: 0.3
    sleep 2
  end
end

live_loop :high_pluck do
  use_synth :pluck
  with_fx :echo, phase: 0.5, mix: 0.2 do
    (ring :fs4, :a4, :cs5, :e5, :cs5, :a4, :e4, :cs5).each do |n|
      play n, amp: 0.3, release: 0.14
      sleep 0.5
    end
  end
end

live_loop :sine_swell do
  use_synth :sine
  with_fx :reverb, room: 0.8, mix: 0.7 do
    16.times do |i|
      play :fs3, attack: 0.08, release: 0.18, amp: 0.04 + (i / 15.0) * 0.2
      sleep 0.25
    end
    16.times do |i|
      play :fs3, attack: 0.08, release: 0.18, amp: 0.24 - (i / 15.0) * 0.2
      sleep 0.25
    end
  end
end
