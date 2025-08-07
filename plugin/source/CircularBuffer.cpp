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
    int buffer_size = static_cast<int>(pow(2.0, ceil(static_cast<double>(size))));
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
        printf("Error : Delay arrange is wrong !");
        return 0.0f;
    }
    
    int readIndex = ( writeIndex - inDelaySample ) & warping;
    return circular_buffer[static_cast<size_t>(readIndex)];
}
