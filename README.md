A library for Dart developers.

## Usage

A simple usage example:

```dart
import 'package:justify_text/justify_text.dart';

main() {
  // Some loooong text
  final text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis ipsum at nisi porttitor malesuada. Aenean eu justo vel urna pharetra lacinia nec et nunc. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam pharetra neque velit, eu aliquet lectus venenatis eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus interdum quis dolor at egestas. Integer at dapibus ante.';
  final wrapped = justify(text, width: 40);

  for (var line in wrapped) {
    print(line);
  }
  // prints:
  // Lorem ipsum dolor sit amet,  consectetur
  // adipiscing elit. Quisque convallis ipsum
  // at nisi porttitor malesuada.  Aenean  eu
  // justo vel urna pharetra lacinia  nec  et
  // nunc.   Pellentesque   habitant    morbi
  // tristique senectus et netus et malesuada
  // fames ac turpis egestas. Etiam  pharetra
  // neque velit, eu aliquet lectus venenatis
  // eget.   Pellentesque   habitant    morbi
  // tristique senectus et netus et malesuada
  // fames  ac  turpis   egestas.   Phasellus
  // interdum quis dolor at egestas.  Integer
  // at dapibus ante.
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/diego-garro/justify-text-dart/issues

## Motivation

The motivation for this repository was the non-existence of a package that justifies
the text to a specific width. Finding a project for the Python language, I decided
to replicate it for the Dart language.

You can find the package JustifyText repository for Python language [here][jtrepo].

[jtrepo]: https://github.com/cjtx/JustifyText

## Requires

* textwrap: ^1.0.2
