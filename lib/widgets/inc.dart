import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:inheritedwidget_sample/bloc/counter_bloc.dart';

class IncBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return FlatButton.icon(
      icon: Icon(Icons.add),
      label: Text("ADD"),
      onPressed: () => counterBloc.increment(),
    );
  }
}
