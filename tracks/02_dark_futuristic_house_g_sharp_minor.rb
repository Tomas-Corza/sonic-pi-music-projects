# DARK FUTURISTIC HOUSE — G# MINOR — reconstructed edition
# Based on August 1, 2026 collaboration notes. Not original recovered source.
# Sonic Pi 4.5+ | 124 BPM | progression G#m – E – B – F#
use_bpm 124
use_debug false

live_loop :master_clock do
  cue :bar
  sleep 4
end

live_loop :kick do
  sample :bd_tek, amp: 1.65
  sleep 1
end

live_loop :backbeat do
  sync :bar
  sleep 1
  sample :sn_dolf, amp: 0.65
  sleep 2
  sample :sn_dolf, amp: 0.7
  sleep 1
end

live_loop :hats do
  8.times do |i|
    sample :drum_cymbal_closed, amp: (i.odd? ? 0.31 : 0.12), finish: 0.1
    sleep 0.5
  end
end

live_loop :sub_bass do
  use_synth :sine
  (ring :gs1, :e1, :b1, :fs1).each do |n|
    4.times do
      play n, attack: 0.01, sustain: 0.55, release: 0.2, amp: 0.95
      sleep 1
    end
  end
end

live_loop :mid_bass do
  use_synth :fm
  (ring :gs2, :e2, :b2, :fs2).each do |n|
    8.times do |i|
      play n, depth: 1.5, divisor: 2, release: 0.16, amp: (i.even? ? 0.5 : 0.27)
      sleep 0.5
    end
  end
end

live_loop :wide_pad do
  use_synth :prophet
  with_fx :reverb, room: 0.95, mix: 0.75 do
    [chord(:gs3, :minor), chord(:e3, :major), chord(:b3, :major), chord(:fs3, :major)].each do |c|
      play c, attack: 1.4, sustain: 2.5, release: 2.4, cutoff: 65, amp: 0.45
      sleep 4
    end
  end
end

live_loop :neon_melody do
  use_synth :blade
  with_fx :echo, phase: 0.75, mix: 0.45 do
    (ring :gs4, :b4, :ds5, :fs5, :e5, :ds5, :b4, :fs4).each do |n|
      play n, release: 0.28, cutoff: 85, amp: 0.26
      sleep 0.5
    end
  end
end

live_loop :digital_glitch do
  sync :bar
  sleep 3.5
  sample :elec_blip, rate: 1.5, amp: 0.17
  sleep 0.5
end
