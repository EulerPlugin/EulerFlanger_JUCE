#pragma once

#include "PluginProcessor.h"

namespace audio_plugin {

class EulerFlangerAudioProcessorEditor : public juce::AudioProcessorEditor {
public:
  explicit EulerFlangerAudioProcessorEditor(EulerFlangerAudioProcessor&);
  ~EulerFlangerAudioProcessorEditor() override;

  void paint(juce::Graphics&) override;
  void resized() override;

private:
  EulerFlangerAudioProcessor& processorRef;

  JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(EulerFlangerAudioProcessorEditor)
};
} 
