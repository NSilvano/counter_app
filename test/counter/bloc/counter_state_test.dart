import 'package:counter_app/counter/presentation/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter State', () {
    test('should create an initial state', () {
      // Arrange & act
      final state = CounterState.initial();

      // Assert
      expect(state, isA<CounterState>());
    });
  });
}
