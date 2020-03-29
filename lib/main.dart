import 'package:flutter/material.dart';
import 'package:inheritedwidget_sample/bloc/counter_bloc.dart';
import 'package:inheritedwidget_sample/pages/counter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBloc>.value(
          value: CounterBloc(),
        ),
      ],
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}
