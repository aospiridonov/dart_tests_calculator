import 'package:dart_tests_calculator/src/calculator.dart';
import 'package:test/test.dart';

void main() {
  //setUpAll(() => print('Runs BEFORE any test is executed'));
  //setUp(() => print('Runs BEFORE EVERY test is executed'));
  //tearDown(() => print('Runs AFTER EVERY test is executed'));
  //tearDownAll(() => print('Runs AFTER ALL tests have been executed'));

  Calculator calculator;

  setUp(() {
    calculator = Calculator();
  });

  group('valid type', () {
    test('Calculator creates a non null object', () {
      expect(Calculator(), isNotNull);
    });

    test('The calculator returns an double number when adding 2 and 2', () {
      final result = calculator.add(2, 2);
      expect(result, isA<double>());
    });
  });
//
  group('add', () {
    test('the calculator returns 4 when adding 2 and 2', () {
      expect(calculator.add(2, 2), 4);
    });

    test('the calculator returns 40 when adding 20 and 20', () {
      expect(calculator.add(20, 20), 40);
    });
  });

  group('substract', () {
    test('the calculator returns 10 when substract 10 to 20', () {
      expect(calculator.substract(20, 10), 10);
    });

    test('the calculator returns -4 when substract 8 to 4', () {
      expect(calculator.substract(4, 8), -4);
    });
  });

  group('multiply', () {
    test('the calculator returns 45 when multiply 5 by 9', () {
      expect(calculator.multiply(5, 9), 45);
    });

    test('the calculator returns 18 when multiply 2 by 9', () {
      expect(calculator.multiply(2, 9), 18);
    });
  });

  group('dividing', () {
    test('the calculator returns 9 when dividing 27 by 3', () {
      expect(calculator.divide(27, 3), 9);
    });

    test('the calculator returns 1 when dividing 27 by 27', () {
      expect(calculator.divide(27, 27), 1);
    });

    test('the calculator throw as ArgumentError returns when dividing by zero',
        () {
      expect(() => calculator.divide(27, 0), throwsArgumentError);
    });
  });
}
