# Install script for directory: /Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/plugin

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

set(CMAKE_BINARY_DIR "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode")

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/Users/sanghoonyou/Library/Audio/Plug-Ins/Components" TYPE STATIC_LIBRARY FILES "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/plugin/EulerFlanger_artefacts/Debug/libEulerFlanger_SharedCode.a")
    if(EXISTS "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/Users/sanghoonyou/Library/Audio/Plug-Ins/Components" TYPE STATIC_LIBRARY FILES "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/plugin/EulerFlanger_artefacts/Release/libEulerFlanger_SharedCode.a")
    if(EXISTS "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/Users/sanghoonyou/Library/Audio/Plug-Ins/Components" TYPE STATIC_LIBRARY FILES "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/plugin/EulerFlanger_artefacts/MinSizeRel/libEulerFlanger_SharedCode.a")
    if(EXISTS "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/Users/sanghoonyou/Library/Audio/Plug-Ins/Components" TYPE STATIC_LIBRARY FILES "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/plugin/EulerFlanger_artefacts/RelWithDebInfo/libEulerFlanger_SharedCode.a")
    if(EXISTS "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}/Users/sanghoonyou/Library/Audio/Plug-Ins/Components/libEulerFlanger_SharedCode.a")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    include("/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/plugin/CMakeFiles/EulerFlanger.dir/install-cxx-module-bmi-Debug.cmake" OPTIONAL)
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    include("/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/plugin/CMakeFiles/EulerFlanger.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    include("/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/plugin/CMakeFiles/EulerFlanger.dir/install-cxx-module-bmi-MinSizeRel.cmake" OPTIONAL)
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    include("/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/plugin/CMakeFiles/EulerFlanger.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/plugin/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
