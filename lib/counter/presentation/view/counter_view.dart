import 'package:counter_app/counter/presentation/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterBloc] state and notified it in response to the user input.
/// {@endtemplate}

class CounterView extends StatelessWidget {
  /// {@macro counter_view}
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            final count = state.count;
            return Text(
              '$count',
              style: textTheme.displayMedium,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterBloc>().add(
                  const CounterEvent.increment(),
                ),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterBloc>().add(
                  const CounterEvent.decrement(),
                ),
          ),
        ],
      ),
    );
  }
}
