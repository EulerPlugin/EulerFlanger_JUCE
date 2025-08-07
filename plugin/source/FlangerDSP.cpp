//
//  FlangerDSP.cpp
//  EulerFlanger
//
//  Created by sanghoonyou on 2025/08/07.
//


#include <EulerFlanger/FlangerDSP.h>


FlangerDSP::FlangerDSP()
{

}

FlangerDSP::~FlangerDSP()
{

}

void FlangerDSP::prepare(const float inSmapleRate, const float inmaxDelayms) noexcept
{
    sampleRate = inSmapleRate;
    maxDelaySample = (inmaxDelayms / 1000.0f) * sampleRate;
    
}

float FlangerDSP::process(const float inSample) noexcept
{
    return inSample;
}
