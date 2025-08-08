# EulerFlanger Plugin 



## Flanger Effect Principle
- Flanger is a modulation effect that mixes the original audio with a **very short delayed signal** (typically a few milliseconds or less), creating phase interference.
- The delay time of the delayed signal is **periodically modulated by a low-frequency oscillator (LFO)**, causing the comb filter peaks and notches in the frequency response to sweep over time.
- This results in the characteristic **sweeping or jet-plane-like sound** unique to Flanger effects.

<br>

## Implementation Details

- **Circular Buffer**  
  - Audio samples are stored in a buffer sized as a power of two for efficient indexing using bitmask operations.  
  - A write pointer continuously records incoming samples, while the read pointer is dynamically calculated based on the modulated delay time.

- **Fractional Delay with Linear Interpolation**  
  - Because the LFO-modulated delay time can be fractional, the read index is not always an integer.  
  - Linear interpolation between adjacent samples provides a smooth, natural-sounding fractional delay without distortion.

- **LFO-Based Delay Time Modulation**  
  - A sine-wave LFO accumulates phase increment per sample, modulating the base delay by a depth value in real time.  
  - This produces the periodic variation in delay time essential for the Flanger's sweeping effect.

- **Dry/Wet Mixing**  
  - The original (dry) and delayed (wet) signals are mixed according to configurable proportions.  
  - Adjusting this ratio controls the effect’s intensity.

<br>

## Summary

EulerFlanger generates time-varying phase interference by applying an LFO-modulated delay, using an efficient circular buffer and linear interpolation to enable smooth, real-time audio processing suitable for a Flanger audio plugin.


