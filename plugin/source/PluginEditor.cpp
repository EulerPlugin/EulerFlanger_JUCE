#include "EulerFlanger/PluginEditor.h"
#include "EulerFlanger/PluginProcessor.h"

namespace audio_plugin {
EulerFlangerAudioProcessorEditor::EulerFlangerAudioProcessorEditor(
    EulerFlangerAudioProcessor& p)
    : AudioProcessorEditor(&p), processorRef(p) {
  juce::ignoreUnused(processorRef);
 
  setSize(400, 300);
}

EulerFlangerAudioProcessorEditor::~EulerFlangerAudioProcessorEditor() {}

void EulerFlangerAudioProcessorEditor::paint(juce::Graphics& g) {
  
  g.fillAll(
      getLookAndFeel().findColour(juce::ResizableWindow::backgroundColourId));

  g.setColour(juce::Colours::white);
  g.setFont(15.0f);
  g.drawFittedText("Hello World!", getLocalBounds(),
                   juce::Justification::centred, 1);
}

void EulerFlangerAudioProcessorEditor::resized() {
}
}  // namespace audio_plugin
