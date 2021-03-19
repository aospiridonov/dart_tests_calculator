import 'package:dart_tests_calculator/src/calculator.dart';
import 'package:test/test.dart';

void main() {
  group('valid type', () {
    test('Calculator creates a non null object', () {
      expect(Calculator(), isNotNull);
    });

    test('The calculator returns an double number when adding 2 and 2', () {
      final calculator = Calculator();
      final result = calculator.add(2, 2);
      expect(result, isA<double>());
    });
  });
//
  group('add', () {
    test('the calculator returns 4 when adding 2 and 2', () {
      final calculator = Calculator();
      expect(calculator.add(2, 2), 4);
    });

    test('the calculator returns 40 when adding 20 and 20', () {
      final calculator = Calculator();
      expect(calculator.add(20, 20), 40);
    });
  });

  group('substract', () {
    test('the calculator returns 10 when substract 10 to 20', () {
      final calculator = Calculator();
      expect(calculator.substract(20, 10), 10);
    });

    test('the calculator returns -4 when substract 8 to 4', () {
      final calculator = Calculator();
      expect(calculator.substract(4, 8), -4);
    });
  });

  group('multiply', () {
    test('the calculator returns 45 when multiply 5 by 9', () {
      final calculator = Calculator();
      expect(calculator.multiply(5, 9), 45);
    });

    test('the calculator returns 18 when multiply 2 by 9', () {
      final calculator = Calculator();
      expect(calculator.multiply(2, 9), 18);
    });
  });

  group('dividing', () {
    test('the calculator returns 9 when dividing 27 by 3', () {
      final calculator = Calculator();
      expect(calculator.divide(27, 3), 9);
    });

    test('the calculator returns 1 when dividing 27 by 27', () {
      final calculator = Calculator();
      expect(calculator.divide(27, 27), 1);
    });

    test('the calculator throw as ArgumentError returns when dividing by zero',
        () {
      final calculator = Calculator();
      expect(() => calculator.divide(27, 0), throwsArgumentError);
    });
  });
}
