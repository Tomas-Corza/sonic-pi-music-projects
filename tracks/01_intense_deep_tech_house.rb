# INTENSE DEEP / TECH HOUSE — reconstructed edition
# Based on July 11, 2026 collaboration notes. Not original recovered source.
# Sonic Pi 4.5+ | 126 BPM | continuous live-loop arrangement
use_bpm 126
use_debug false
set :kick_mix, 1.0
set :clap_mix, 0.7
set :hats_mix, 0.5
set :bass_mix, 0.85
set :pad_mix, 0.35
set :acid_mix, 0.4
set :arp_mix, 0.35
set :upper_harmony_mix, 0.4

live_loop :kick do
  sample :bd_haus, amp: 1.6 * (get(:kick_mix) || 1)
  sleep 1
end

live_loop :clap do
  sync :kick
  sleep 1
  sample :sn_dolf, amp: get(:clap_mix) || 0.7, rate: 0.95
  sleep 2
  sample :sn_dolf, amp: get(:clap_mix) || 0.7
  sleep 1
end

live_loop :hats do
  8.times do |i|
    sample :drum_cymbal_closed, finish: 0.09, amp: (i.even? ? 0.34 : 0.21) * (get(:hats_mix) || 0.5)
    sleep 0.5
  end
end

live_loop :bass do
  use_synth :fm
  notes = [:e2, :e2, :g2, :e2, :d2, :e2, :b1, :d2]
  notes.each do |n|
    play n, release: 0.22, depth: 2, divisor: 2, amp: get(:bass_mix) || 0.85
    sleep 0.5
  end
end

live_loop :pad do
  use_synth :prophet
  with_fx :reverb, room: 0.85, mix: 0.6 do
    [chord(:e3, :minor7), chord(:g3, :major7), chord(:d3, :major7), chord(:c3, :major7)].each do |c|
      play c, attack: 1.2, sustain: 2.2, release: 1, cutoff: 75, amp: get(:pad_mix) || 0.35
      sleep 4
    end
  end
end

live_loop :acid do
  use_synth :tb303
  with_fx :echo, phase: 0.375, mix: 0.2 do
    (ring :e3, :r, :g3, :e3, :b3, :r, :d3, :e3).each do |n|
      play n, release: 0.18, cutoff: rrand(65, 110), res: 0.82, amp: get(:acid_mix) || 0.4 unless n == :r
      sleep 0.5
    end
  end
end

live_loop :dark_arp do
  use_synth :blade
  with_fx :reverb, room: 0.6 do
    (ring :e4, :g4, :b4, :d5, :b4, :g4, :fs4, :d4).each do |n|
      play n, release: 0.2, cutoff: 85, amp: get(:arp_mix) || 0.35
      sleep 0.5
    end
  end
end

live_loop :upper_harmony do
  use_synth :sine
  with_fx :echo, phase: 0.75, mix: 0.3 do
    play chord(:e5, :minor7), attack: 0.6, release: 3, amp: get(:upper_harmony_mix) || 0.4
    sleep 8
  end
end
