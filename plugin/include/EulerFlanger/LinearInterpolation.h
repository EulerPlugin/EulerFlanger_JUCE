//
//  LinearInterpolation.hpp
//  EulerFlanger
//
//  Created by sanghoonyou on 2025/08/07.
//

#pragma once
#include <stdio.h>
#include <juce_audio_processors/juce_audio_processors.h>

class LinearInterpolation
{
    public:
        LinearInterpolation();
        ~LinearInterpolation();
        
        float process(const float* buffer, const float inIndex, const int buffersize) noexcept;
};
