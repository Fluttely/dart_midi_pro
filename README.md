# dart_midi_pro 1.0.2

This package is a continuation of the package [dart_midi](https://pub.dev/packages/dart_midi).

A Dart package that provides a parser and writer implementation for MIDI data.

The byte decoding and writing code is based on the JavaScript library [midi-file](https://github.com/nfroidure/MIDIFile).

## Example

```dart
// Open a file containing midi data
var file = File('sample_midi.mid');

// Construct a midi parser
var parser = MidiParser();

// Parse midi directly from file. You can also use parseMidiFromBuffer to directly parse LI
MidiFile parsedMidi = parser.parseMidiFromFile(file);

// You can now access your parsed [MidiFile]
print(parsedMidi.tracks.length.toString());

// Construct a midi writer
var writer = MidiWriter();

// Let's write and encode our midi data again
// You can also control `running` flag to compress the file and `useByte9ForNoteOff` to use 0x
writer.writeMidiToFile(parsedMidi, File('output.mid'));
```