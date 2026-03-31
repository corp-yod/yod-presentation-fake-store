import 'package:flutter_test/flutter_test.dart';

import 'package:yod_presentation_fake_store/yod_presentation_fake_store.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });
}
