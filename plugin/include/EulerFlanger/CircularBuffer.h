//
//  CircularBuffer.hpp
//  EulerFlanger
//
//  Created by sanghoonyou on 2025/08/07.
//

#pragma once

#include <stdio.h>
#include <juce_audio_processors/juce_audio_processors.h>
#include <vector>

class CircularBuffer
{
    public:
        CircularBuffer();
        ~CircularBuffer();
    
        void prepare(const int size) noexcept;
        
        void writeSample(const float inSample) noexcept;
        float readSample(const int inDelaySample) noexcept;
        
    private:
        std::vector<float> circular_buffer;
        int writeIndex;
        int warping;
};
