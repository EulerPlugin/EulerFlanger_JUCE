//
//  CircularBuffer.cpp
//  EulerFlanger
//
//  Created by sanghoonyou on 2025/08/07.
//

#include <EulerFlanger/CircularBuffer.h>
#include <cmath>

CircularBuffer::CircularBuffer()
:writeIndex(0), warping(0)
{
    
}

CircularBuffer::~CircularBuffer()
{

}

void CircularBuffer::prepare(const int size) noexcept
{
    buffer_size = static_cast<int>(pow(2.0, ceil(static_cast<double>(log2(size)))));
    warping = buffer_size - 1;
    circular_buffer.resize(static_cast<size_t>(buffer_size));
}

void CircularBuffer::writeSample(const float inSample) noexcept
{
    circular_buffer[static_cast<size_t>(writeIndex)] = inSample;
    writeIndex =  ( writeIndex + 1 ) & warping;
}

float CircularBuffer::readSample(const int inDelaySample) noexcept
{
    if (inDelaySample < 1 || inDelaySample >= warping + 1)
    {
        //printf("Error : Delay arrange is wrong !");
        return 0.0f;
    }
    
    float readIndex = static_cast<float>(writeIndex) - static_cast<float>(inDelaySample);
    
    if(readIndex < 0.0f)
        readIndex += static_cast<float>(buffer_size);
    
    float sample = LI.process(circular_buffer.data(), readIndex, buffer_size);
    return sample;
}
