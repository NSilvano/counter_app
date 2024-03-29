import 'package:counter_app/counter/presentation/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterBloc] instance to the [CounterView].
/// {@endtemplate}

class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: const CounterView(),
    );
  }
}
