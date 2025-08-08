//
//  FlangerDSP.cpp
//  EulerFlanger
//
//  Created by sanghoonyou on 2025/08/07.
//


#include <EulerFlanger/FlangerDSP.h>
#include <cmath>


FlangerDSP::FlangerDSP()
:dry(0.5f),
 wet(0.5f),
 LFO_base_delay(0.004f),
 LFO_depth(0.003f),
 LFO_rate(0.25f),
 LFO_phase_0(0.0f)
{
    
}

FlangerDSP::~FlangerDSP()
{

}

void FlangerDSP::prepare(const int inSampleRate, const float inMaxDelayms) noexcept
{
    LFO_base_delay = 0.001f;
    LFO_depth = 0.0005f;

    sampleRate = inSampleRate;
    maxDelaySample = static_cast<int>(std::ceil((inMaxDelayms / 1000.0f) * sampleRate));
    
    LFO_base_delay = (LFO_base_delay * sampleRate);
    LFO_depth = (LFO_depth * sampleRate);
    
    CB.prepare(maxDelaySample + 2);
    
}

float FlangerDSP::process(const float inSample) noexcept
{
    const float twoPi = 2 * juce::MathConstants<float>::pi;
    const float phaseInc = twoPi * (LFO_rate / static_cast<float>(sampleRate));
    
    LFO_phase_0 += phaseInc;
    if(LFO_phase_0 >= twoPi) LFO_phase_0 -= twoPi;
    
    const float LFOsample = LFO_base_delay + LFO_depth * std::sinf(LFO_phase_0);
    
    CB.writeSample(inSample);
    const float outSample = dry * inSample + wet * CB.readSample(static_cast<int>(LFOsample));
    
    return outSample;
}
