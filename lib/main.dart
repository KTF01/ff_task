import 'package:ff_task/core/router_config.dart';
import 'package:ff_task/core/theme.dart';
import 'package:ff_task/features/them_switch/presentation/bloc/theme_switch_block.dart';
import 'package:ff_task/features/them_switch/presentation/bloc/theme_swtich_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeSwitchBlock(),
      child: BlocBuilder<ThemeSwitchBlock, ThemeState>(
        builder: (context, state) => MaterialApp.router(
          routerConfig: router,
          theme: appTheme,
          debugShowCheckedModeBanner: false,
          darkTheme: darkTheme,
          themeMode: state is ThemeLight ? ThemeMode.light : ThemeMode.dark,
        ),
      ),
    );
  }
}
