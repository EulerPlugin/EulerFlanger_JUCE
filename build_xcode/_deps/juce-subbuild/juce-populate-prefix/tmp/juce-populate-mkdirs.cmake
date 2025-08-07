# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/libs/juce")
  file(MAKE_DIRECTORY "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/libs/juce")
endif()
file(MAKE_DIRECTORY
  "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/_deps/juce-build"
  "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/_deps/juce-subbuild/juce-populate-prefix"
  "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/_deps/juce-subbuild/juce-populate-prefix/tmp"
  "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/_deps/juce-subbuild/juce-populate-prefix/src/juce-populate-stamp"
  "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/_deps/juce-subbuild/juce-populate-prefix/src"
  "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/_deps/juce-subbuild/juce-populate-prefix/src/juce-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/_deps/juce-subbuild/juce-populate-prefix/src/juce-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/_deps/juce-subbuild/juce-populate-prefix/src/juce-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
