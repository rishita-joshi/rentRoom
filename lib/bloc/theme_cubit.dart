import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_a_room/bloc/theme_reposatry.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({
    required ThemePersistence themeRepository,
  })  : _themeRepository = themeRepository,
        super(const ThemeState());

  final ThemePersistence _themeRepository;
  late StreamSubscription<CustomTheme> _themeSubscription;
  static late bool _isDarkTheme;

  void getCurrentTheme() {
    _themeSubscription = _themeRepository.getTheme().listen(
      (customTheme) {
        if (customTheme.name == CustomTheme.light.name) {
          _isDarkTheme = false;
          emit(state.copyWith(themeMode: ThemeMode.light));
        } else {
          _isDarkTheme = true;
          emit(state.copyWith(themeMode: ThemeMode.dark));
        }
      },
    );
  }

  void switchTheme() {
    if (_isDarkTheme) {
      // Since, currentTheme is dark, after switching we want light theme to
      // be persisted.
      _themeRepository.saveTheme(CustomTheme.light);
    } else {
      // Since, currentTheme is light, after switching we want dark theme to
      // be persisted.
      _themeRepository.saveTheme(CustomTheme.dark);
    }
  }

  @override
  Future<void> close() {
    _themeSubscription.cancel();
    _themeRepository.dispose();
    return super.close();
  }
}
