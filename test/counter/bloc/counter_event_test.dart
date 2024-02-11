import 'package:counter_app/counter/presentation/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter Event', () {
    test('should create an Increment event', () {
      // Arrange & Act
      const event = CounterEvent.increment();

      // Assert
      expect(event, isA<CounterEvent>());
    });

    test('should create a Decrement event', () {
      // Arrange & Act
      const event = CounterEvent.decrement();

      // Assert
      expect(event, isA<CounterEvent>());
    });
  });
}
