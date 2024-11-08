import 'dart:io';

import 'package:test/test.dart';
import 'package:dart_midi_pro/dart_midi_pro.dart';

void main() {
  test('parser and writer output matches', () {
    var file = File('resources/MIDI_sample.mid');
    final parser = MidiParser();
    List<int> originalFileBuffer = file.readAsBytesSync();
    var parsedMidi = parser.parseMidiFromBuffer(originalFileBuffer);

    var writer = MidiWriter();
    List<int> writtenBuffer = writer.writeMidiToBuffer(parsedMidi);

    expect(originalFileBuffer, writtenBuffer);
  });
}
