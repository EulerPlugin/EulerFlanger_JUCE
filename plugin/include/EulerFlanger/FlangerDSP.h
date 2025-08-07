//
//  FlangerDSP.hpp
//  EulerFlanger
//
//  Created by sanghoonyou on 2025/08/07.
//

#pragma once

#include <stdio.h>
#include <juce_audio_processors/juce_audio_processors.h>

using namespace std;

class FlangerDSP
{
    public:
        FlangerDSP();
        ~FlangerDSP();
        
        void prepare(const float inSmapleRate, const float inmaxDelayms) noexcept;
        float process(const float inSample) noexcept;
        
    private:
        float sampleRate = 0.0f;
        float maxDelaySample = 0.0f;
        
        const float dry = 0.5f;
        const float wet = 0.5f;
        
        const float LFO_base_delay = 0.001f;
        const float LFO_depth = 0.0005f;
        
        const float LFO_rate = 0.25f;
        
        
};
