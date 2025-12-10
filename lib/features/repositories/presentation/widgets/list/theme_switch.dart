import 'package:ff_task/features/theme_switch/presentation/bloc/theme_switch_block.dart';
import 'package:ff_task/features/theme_switch/presentation/bloc/theme_switch_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeSwitchBlock>();
    return Row(
      children: [
        const Icon(Icons.light_mode),
        Switch(
          value: Theme.of(context).brightness == Brightness.dark,
          onChanged: (newValue) {
            themeBloc.add(ThemeSwitchEvent(newValue));
          },
        ),
        const Icon(Icons.dark_mode),
      ],
    );
  }
}
