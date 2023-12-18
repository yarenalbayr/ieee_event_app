import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/configurations/localization/localization.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(const LocalizationState());

  void changeLanguage(AppLanguages language, BuildContext context) {

    AppLocalization.changeLocale(locale: language.locale, context: context);
    emit(state.copyWith(language: language));
  }
}

class LocalizationState extends Equatable {
  const LocalizationState({
    this.language = AppLanguages.en,
  });
  final AppLanguages language;

  @override
  List<Object?> get props => [language];

  LocalizationState copyWith({
    AppLanguages? language,
  }) {
    return LocalizationState(
      language: language ?? this.language,
    );
  }
}
