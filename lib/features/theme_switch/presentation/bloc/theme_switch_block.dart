import 'package:ff_task/features/theme_switch/presentation/bloc/theme_switch_event.dart';
import 'package:ff_task/features/theme_switch/presentation/bloc/theme_swtich_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeSwitchBlock extends Bloc<ThemeEvent, ThemeState> {
  ThemeSwitchBlock() : super(ThemeLight()) {
    on<ThemeEvent>((event, emit) {
      if (event is ThemeSwitchEvent) {
        emit(event.isDark ? ThemeDark() : ThemeLight());
      }
    });
  }
}
