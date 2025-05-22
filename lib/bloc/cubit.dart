// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/model.dart';
import '../repository/repository.dart';

class DictionaryCubit extends Cubit<DictionaryStates> {
  final WordRepo wordRepo;
  DictionaryCubit(
    this.wordRepo,
  ) : super(WordNotSearchedState());
  final queryController = TextEditingController();

  Future getWordSearched() async {
    try {
      final List<WordRersponse> words =
          await wordRepo.getInfoFromDictionary(queryController.text);
      emit(WordSearchedState(words));
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(ErrorState('An error occurred '));
    }
  }
}

abstract class DictionaryStates {}

class WordNotSearchedState extends DictionaryStates {}

class WordSearchingState extends DictionaryStates {}

class WordSearchedState extends DictionaryStates {
  final List<WordRersponse> words;
  WordSearchedState(this.words);
}

class ErrorState extends DictionaryStates {
  final String message;
  ErrorState(
    this.message,
  );
}
