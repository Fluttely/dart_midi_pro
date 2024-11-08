[![pub package](https://img.shields.io/pub/v/dart_midi.svg)](https://pub.dartlang.org/packages/dart_midi)
[![GitHub license](https://img.shields.io/github/license/feelfreelinux/dart_midi.svg)](https://github.com/feelfreelinux/dart_midi/blob/master/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/feelfreelinux/dart_midi.svg)](https://github.com/feelfreelinux/dart_midi/issues)

# dart_midi Fork

A Dart package that provides a parser and writer implementation for MIDI data. This package is a fork of the original **dart_midi** library, created by [Filip Grzywok](https://github.com/fgrzywok), and has been expanded with new features, bug fixes, and performance improvements.

The byte decoding and writing code is originally based on the JavaScript library [midi-file](https://github.com/carter-thaxton/midi-file).

## What's New in This Fork

This fork introduces the following updates:
- [List any new features you have added here]
- [List any specific bug fixes or improvements]
- [Additional performance optimizations or changes]

## Example

```dart
import 'dart:io';
import 'package:dart_midi_pro/dart_midi_pro.dart';

// Open a file containing MIDI data
var file = File('sample_midi.mid');

// Construct a MIDI parser
var parser = MidiParser();

// Parse MIDI directly from file. You can also use parseMidiFromBuffer to directly parse List<int>
MidiFile parsedMidi = parser.parseMidiFromFile(file);

// You can now access your parsed [MidiFile]
print(parsedMidi.tracks.length.toString());

// Construct a MIDI writer
var writer = MidiWriter();

// Let's write and encode our MIDI data again
// You can also control `running` flag to compress file and  `useByte9ForNoteOff` to use 0x09 for noteOff when velocity is zero
writer.writeMidiToFile(parsedMidi, File('output.mid'));
