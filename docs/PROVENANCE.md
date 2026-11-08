# Project history and provenance

This compilation was created November 7, 2026 using records of earlier collaborations. The records identified projects and their musical structure, but did not expose original complete Ruby source text. **Every `.rb` file in this repository is a fresh reconstruction, not a byte-for-byte copy**. Do not label these files 'original 2026 versions' without checking them against saved Sonic Pi buffers or earlier exported files.

## July 11, 2026 — Intense Deep / Tech House
- Documented 126 BPM Sonic Pi 4.5.1 script with kick, clap, hats, shaker, bass, harmony, acid riff, arpeggios, metallic percussion and later a continuously flowing version.
- Mixer revisions introduced `set`/`get` multipliers, plus an upper-harmony shimmer layer.
- Reconstructed file: `tracks/01_intense_deep_tech_house.rb`. Not all original layers reproduced.

## July 11, 2026 — Advanced Shoegaze House
- Documented 120 BPM shoegaze/house concept with Em9 → Gmaj7 → Dadd9/A → Cmaj7, distorted chords, bass, melodies and atmosphere.
- Originally converted from Strudel-style music scripting to Sonic Pi.
- Reconstructed file: `tracks/04_advanced_shoegaze_house.rb`. The original Strudel source survives in a separate Library text attachment, but was not included because its language is JavaScript rather than Sonic Pi Ruby.

## August 1, 2026 — Dark Futuristic House
- Documented 124 BPM 4/4 track in G# minor, using G#m–E–B–F#, with sub-bass, FM mid-bass, pads, melody and glitch accents.
- Earlier drafts referred to a 32-bar arrangement; this reconstruction is a continuous live-loop sketch and **does not claim to reproduce the original 32-bar arrangement**.
- Reconstructed file: `tracks/02_dark_futuristic_house_g_sharp_minor.rb`.

## August 30–31, 2026 — Techno Groove
- Documented 140 BPM F# techno sketch, revised to a simpler working groove with kick, hats, bass, stab and pluck.
- Later change added an F# sine swell in 1/16-note movement (`sleep 0.25`).
- Reconstructed file: `tracks/03_techno_groove_140.rb`.

## Finding original code on your Mac

Some Sonic Pi versions store unsaved buffers under `~/.sonic-pi/store/default`. Before replacing, resetting or cleaning Sonic Pi, back up that folder. Any `.rb` exports saved elsewhere are also useful for an exact archival repository. This is a directory reference only; this compilation did not inspect your Mac.
