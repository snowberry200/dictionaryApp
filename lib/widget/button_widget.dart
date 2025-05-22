import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cubit.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<DictionaryCubit>();
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(200, 60),
          backgroundColor: Colors.greenAccent,
        ),
        onPressed: () => cubit.getWordSearched(),
        key: UniqueKey(),
        child: Text('Search',
            style: TextStyle(fontSize: 20, color: Colors.white)));
  }
}
