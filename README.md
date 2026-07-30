# homebrew-tap

Personal Homebrew tap for [@fortunto2](https://github.com/fortunto2) tools.

## Usage

```sh
brew tap fortunto2/tap
```

### Formulae

| package | description | install |
|---------|-------------|---------|
| [rust-synth](https://github.com/fortunto2/rust-synth) | Terminal modular ambient synth | `brew install rust-synth` |

### Casks (prebuilt macOS apps)

| package | description | install |
|---------|-------------|---------|
| [life2film-studio](https://life2film.com/) | Video analyser and montage builder, runs entirely on your machine | `brew install --cask life2film-studio` |

Signed with a Developer ID and notarised by Apple, so it opens without Gatekeeper warnings.
Apple Silicon, macOS 13+. ffmpeg is linked statically — nothing to install first.

### Build from source (any arch, incl. Intel Macs / Linux)

```sh
brew install --head fortunto2/tap/rust-synth
```

This clones the main branch and builds locally with `cargo`.
