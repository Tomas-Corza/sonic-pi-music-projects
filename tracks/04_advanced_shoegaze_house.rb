# ADVANCED SHOEGAZE HOUSE — reconstructed edition
# Based on July 11, 2026 collaboration notes and archived Strudel arrangement.
# This is a Sonic Pi reinterpretation, NOT the original complete Sonic Pi source.
# Sonic Pi 4.5+ | 120 BPM | Em9 – Gmaj7 – Dadd9/A – Cmaj7
use_bpm 120
use_debug false
set :drums_amp, 0.9
set :bass_amp, 0.7
set :chords_amp, 0.38
set :melody_amp, 0.35
set :air_amp, 0.2

live_loop :kick do
  sample :bd_haus, amp: 1.5 * (get(:drums_amp) || 0.9)
  sleep 1
end

live_loop :snare do
  sleep 1
  sample :sn_dolf, amp: 0.58 * (get(:drums_amp) || 0.9)
  sleep 2
  sample :sn_dolf, amp: 0.64 * (get(:drums_amp) || 0.9)
  sleep 1
end

live_loop :hat_wall do
  16.times do |i|
    sample :drum_cymbal_closed, finish: 0.05, amp: (i % 4 == 2 ? 0.18 : 0.08) * (get(:drums_amp) || 0.9)
    sleep 0.25
  end
end

live_loop :deep_bass do
  use_synth :fm
  (ring :e2, :g2, :a1, :c2).each do |n|
    8.times do |i|
      play n, depth: 1.3, release: 0.26, cutoff: 68, amp: (i.even? ? 0.67 : 0.3) * (get(:bass_amp) || 0.7)
      sleep 0.5
    end
  end
end

live_loop :chord_wall do
  use_synth :dsaw
  with_fx :reverb, room: 0.96, mix: 0.8 do
    with_fx :echo, phase: 0.75, mix: 0.27 do
      [[:e3, :g3, :b3, :d4, :fs4], [:g3, :b3, :d4, :fs4],
       [:a2, :d3, :e3, :fs3, :a3], [:c3, :e3, :g3, :b3]].each do |notes|
        play notes, attack: 1.1, sustain: 2.2, release: 2.3, cutoff: 65, amp: get(:chords_amp) || 0.38
        sleep 4
      end
    end
  end
end

live_loop :icy_melody do
  use_synth :blade
  with_fx :echo, phase: 0.375, mix: 0.4 do
    (ring :e5, :fs5, :g5, :b4, :a4, :fs5, :d5, :b4).each do |n|
      play n, release: 0.23, cutoff: 92, amp: get(:melody_amp) || 0.35
      sleep 0.5
    end
  end
end

live_loop :air_and_noise do
  with_fx :hpf, cutoff: 90 do
    with_fx :reverb, room: 1, mix: 0.85 do
      sample :ambi_choir, rate: 0.5, amp: get(:air_amp) || 0.2
      sleep 8
    end
  end
end
