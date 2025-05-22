import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cubit.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<DictionaryCubit>();

    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: TextField(
        focusNode: FocusNode(),
        controller: cubit.queryController,
        style: TextStyle(fontSize: 25, color: Colors.white70),
        keyboardAppearance: Brightness.light,
        strutStyle: StrutStyle(
            forceStrutHeight: true,
            leadingDistribution: TextLeadingDistribution.even),
        decoration: InputDecoration(
          suffixIcon: Icon(
              applyTextScaling: true,
              grade: 1,
              Icons.emoji_emotions,
              size: 30,
              color: const Color.fromARGB(255, 48, 29, 22)),
          labelText: 'Search',
          labelStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Colors.grey,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  strokeAlign:
                      BouncingScrollSimulation.maxSpringTransferVelocity,
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 2)),
          hintText: 'Search any word here',
          hintStyle: TextStyle(fontSize: 20, color: Colors.white),
          prefixIcon: Icon(
            blendMode: BlendMode.difference,
            opticalSize: 2,
            fill: 1,
            Icons.search,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
