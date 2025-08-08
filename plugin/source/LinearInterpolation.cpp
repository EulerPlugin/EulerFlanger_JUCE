//
//  LinearInterpolation.cpp
//  EulerFlanger
//
//  Created by sanghoonyou on 2025/08/07.
//

#include <EulerFlanger/LinearInterpolation.h>
#include <cmath>


LinearInterpolation::LinearInterpolation()
{

}

LinearInterpolation::~LinearInterpolation()
{

}

float LinearInterpolation::process(const float* buffer, const float inIndex, const int buffersize) noexcept
{
    int wrapMask = buffersize - 1;
    
    if (inIndex < 0)
    {
        printf("Error : Index is Wrong!");
        return 0;
    }
    
    const int low = static_cast<int>(inIndex) & wrapMask;
    int high = (low + 1) & wrapMask ;
    
    
    const float a = inIndex - low;
    const float y0 = buffer[low];
    const float y1 = buffer[high];
    
    return (1.0f - a) * y0 + a * y1;
}
        
