import 'package:textwrap/textwrap.dart';

/// Wrap a single paragraph of text and justifies it with a specific width.
List<String> justify(
  String text, {
  int width = 70,
  String sep = ' ',
  bool justifyLastLine = false,
}) {
  int ourRange;

  // wrap the text
  var wrappedText = wrap(text, width: width);

  // If justifyLastLine == false we omite justify the las line
  if (justifyLastLine == false) {
    ourRange = wrappedText.length - 1;
  } else {
    ourRange = wrappedText.length;
  }

  // create a iterator over the wrappedText lines to justify them
  final range = Iterable<int>.generate(ourRange).toList();

  for (var i in range) {
    // divide the line of text by a space
    var line = wrappedText[i].split(' ');

    // this counter help us to start to count the second from the last word
    // in the line, the word before the las space. We use it to walk backward
    // adding a space to every word until the line length is exactly `width`
    // characters long
    var counter = line.length - 2;

    // test if the line is `width` characters long
    while (wrappedText[i].length < width) {
      // handle for one word line
      if (line.length < 2) {
        wrappedText[i] += sep;
        continue;
      }

      // if it's shorter than `width`...
      try {
        // ...add our separator character to the end of the word before the
        // las space...
        line[counter] += sep;
        // ...then, decrease counter by one to walk back to the next previous
        // word...
        counter -= 1;
        // ...and replace the line to test it again until its lenght match
        // with `width`
        wrappedText[i] = line.join(sep);
      } catch (e) {
        // reset counter to start at word before the final space for the next
        // line :)
        counter = line.length - 2;
      }
    }
  }

  return wrappedText;
}
