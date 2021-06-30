import 'package:justify_text/justify_text.dart';
import 'package:test/test.dart';

void main() {
  group('Test the justify() function', () {
    final text =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis ipsum at nisi porttitor malesuada. Aenean eu justo vel urna pharetra lacinia nec et nunc. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam pharetra neque velit, eu aliquet lectus venenatis eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus interdum quis dolor at egestas. Integer at dapibus ante.';
    final wrapped = justify(text, width: 40);
    test('First line test', () {
      expect(wrapped.first, 'Lorem ipsum dolor sit amet,  consectetur');
    });

    test('Last line test', () {
      expect(wrapped.last, 'at dapibus ante.');
    });

    final wrapped2 = justify(text, width: 40, justifyLastLine: true);
    test('Last line test 2', () {
      expect(wrapped2.last, 'at             dapibus             ante.');
    });
  });
}
