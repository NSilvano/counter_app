import 'package:counter_app/counter/presentation/counter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('Counter Bloc', () {
    group('increment', () {
      blocTest<CounterBloc, CounterState>(
        'emits [1] when state is 0',
        build: () => CounterBloc(),
        act: (bloc) => bloc.add(const CounterEvent.increment()),
        expect: () => <CounterState>[const CounterState(count: 1)],
      );

      blocTest<CounterBloc, CounterState>(
        'emits [1, 2] when state is 0 and invoked twice',
        build: () => CounterBloc(),
        act: (bloc) => bloc
          ..add(const CounterEvent.increment())
          ..add(const CounterEvent.increment()),
        expect: () => <CounterState>[
          const CounterState(count: 1),
          const CounterState(count: 2)
        ],
      );

      blocTest<CounterBloc, CounterState>(
        'emits [43] when state is 42',
        build: () => CounterBloc(),
        seed: () => const CounterState(count: 42),
        act: (bloc) => bloc.add(const CounterEvent.increment()),
        expect: () => <CounterState>[const CounterState(count: 43)],
      );
    });

    group('decrement', () {
      blocTest<CounterBloc, CounterState>(
        'emits [-1] when state is 0',
        build: () => CounterBloc(),
        act: (bloc) => bloc.add(const CounterEvent.decrement()),
        expect: () => <CounterState>[const CounterState(count: -1)],
      );

      blocTest<CounterBloc, CounterState>(
        'emits [-1, -2] when state is 0 and invoked twice',
        build: () => CounterBloc(),
        act: (bloc) => bloc
          ..add(const CounterEvent.decrement())
          ..add(const CounterEvent.decrement()),
        expect: () => <CounterState>[
          const CounterState(count: -1),
          const CounterState(count: -2)
        ],
      );

      blocTest<CounterBloc, CounterState>(
        'emits [42] when state is 43',
        build: () => CounterBloc(),
        seed: () => const CounterState(count: 43),
        act: (bloc) => bloc.add(const CounterEvent.decrement()),
        expect: () => <CounterState>[const CounterState(count: 42)],
      );
    });
  });
}
