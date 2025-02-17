
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:myapp/bloc/theme_state.dart';
import 'package:myapp/bloc/theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(ThemeData())) {

    on<ChangeTheme>((event, emit) => emit(ThemeState(event.themeData)));
  }
}
