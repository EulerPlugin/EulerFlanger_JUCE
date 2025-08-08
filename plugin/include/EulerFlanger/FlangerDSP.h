//
//  FlangerDSP.hpp
//  EulerFlanger
//
//  Created by sanghoonyou on 2025/08/07.
//

#pragma once

#include <stdio.h>
#include <juce_audio_processors/juce_audio_processors.h>
#include <EulerFlanger/CircularBuffer.h>

using namespace std;

class FlangerDSP
{
    public:
        FlangerDSP();
        ~FlangerDSP();
        
        void prepare(const int inSampleRate, const float inMaxDelayms) noexcept;
        float process(const float inSample) noexcept;
        
    private:
        int sampleRate;
        int maxDelaySample;
        
        const float dry;
        const float wet;
        
        float LFO_base_delay;
        float LFO_depth;
        
        const float LFO_rate;
        
        float LFO_phase_0;
        
        CircularBuffer CB;
        
        
};
