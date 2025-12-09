abstract class ThemeEvent {}

class ThemeSwitchEvent extends ThemeEvent {
  bool isDark;
  ThemeSwitchEvent(this.isDark);
}
