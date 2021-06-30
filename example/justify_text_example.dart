import 'package:justify_text/justify_text.dart';

void main() {
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
