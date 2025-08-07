if(EXISTS "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/test/RelWithDebInfo/EulerFlangerTest")
  if(NOT EXISTS "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/test/EulerFlangerTest[1]_tests-RelWithDebInfo.cmake" OR
     NOT "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/test/EulerFlangerTest[1]_tests-RelWithDebInfo.cmake" IS_NEWER_THAN "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/test/RelWithDebInfo/EulerFlangerTest" OR
     NOT "/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/test/EulerFlangerTest[1]_tests-RelWithDebInfo.cmake" IS_NEWER_THAN "${CMAKE_CURRENT_LIST_FILE}")
    include("/opt/homebrew/share/cmake/Modules/GoogleTestAddTests.cmake")
    gtest_discover_tests_impl(
      TEST_EXECUTABLE [==[/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/test/RelWithDebInfo/EulerFlangerTest]==]
      TEST_EXECUTOR [==[]==]
      TEST_WORKING_DIR [==[/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/test]==]
      TEST_EXTRA_ARGS [==[]==]
      TEST_PROPERTIES [==[]==]
      TEST_PREFIX [==[]==]
      TEST_SUFFIX [==[]==]
      TEST_FILTER [==[]==]
      NO_PRETTY_TYPES [==[FALSE]==]
      NO_PRETTY_VALUES [==[FALSE]==]
      TEST_LIST [==[EulerFlangerTest_TESTS]==]
      CTEST_FILE [==[/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/test/EulerFlangerTest[1]_tests-RelWithDebInfo.cmake]==]
      TEST_DISCOVERY_TIMEOUT [==[5]==]
      TEST_DISCOVERY_EXTRA_ARGS [==[]==]
      TEST_XML_OUTPUT_DIR [==[]==]
    )
  endif()
  include("/Users/sanghoonyou/Desktop/DSP_WolfSound/Lesson04.DSP_Practice/Flanger_JUCE/build_xcode/test/EulerFlangerTest[1]_tests-RelWithDebInfo.cmake")
else()
  add_test(EulerFlangerTest_NOT_BUILT EulerFlangerTest_NOT_BUILT)
endif()
