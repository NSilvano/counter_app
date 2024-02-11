import 'package:counter_app/counter/presentation/view/view.dart';
import 'package:flutter/material.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the 'home' to [CounterPage].
/// {@endtemplate}
class CounterApp extends MaterialApp {
  const CounterApp({super.key}) : super(home: const CounterPage());
}
