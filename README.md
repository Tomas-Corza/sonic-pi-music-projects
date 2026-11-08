# Sonic Pi Music Projects

**Creative coding and electronic music experiments — Tomas Corza**

A collection of Sonic Pi (Ruby-based live coding) compositions developed from collaborative music experiments in July–August 2026. Four scripts are supplied as **new reconstructions** informed by the original project notes; the original full conversation code was not retrievable. These are **not archival reproductions** and have **not been auditioned in Sonic Pi**.

## Tracks

| File | BPM | Sound / arrangement | Historical reference |
| --- | ---: | --- | --- |
| `tracks/01_intense_deep_tech_house.rb` | 126 | Acid lead, arp, pads, four-on-floor, live mixer variables | July 11, 2026 |
| `tracks/02_dark_futuristic_house_g_sharp_minor.rb` | 124 | G#m–E–B–F# progression, sub and FM bass, glitch textures | August 1, 2026 |
| `tracks/03_techno_groove_140.rb` | 140 | F# techno groove, distorted bass, prophet stab, 1/16-note sine swell | August 30–31, 2026 |
| `tracks/04_advanced_shoegaze_house.rb` | 120 | Em9–Gmaj7–Dadd9/A–Cmaj7, expansive chords, atmospheric layers | July 11, 2026 |

## How to use

1. Install [Sonic Pi](https://sonic-pi.net/), ideally v4.5 or later.
2. Open a `.rb` file in a text editor and copy it into a Sonic Pi buffer.
3. Click **Run**; click **Stop** to stop all loops.
4. For the tech-house or shoegaze tracks, alter the `set :..._mix` / `set :..._amp` values and rerun to rebalance layers.

No external samples or plugins are intentionally required; these sketches use bundled Sonic Pi synths and samples. They need playback testing and may require adjustments to your installation.

## Provenance and scope

See [docs/PROVENANCE.md](docs/PROVENANCE.md) for notes on each historical project and the difference between documented original work and reconstructed material.

A separate July 11 Strudel/JavaScript shoegaze-house composition was found in the library. It is **not Sonic Pi code**, so it is intentionally excluded from this Ruby-only collection. It can be placed in a companion JavaScript repository if desired.

## License

No license has been selected. Add a license intentionally before inviting reuse or contributions.
