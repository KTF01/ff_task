import 'package:ff_task/features/repositories/domain/usecases/get_repositories_list_usecase.dart';
import 'package:ff_task/features/repositories/presentation/bloc/repositories_block.dart';
import 'package:ff_task/features/them_switch/presentation/bloc/theme_switch_block.dart';
import 'package:ff_task/features/them_switch/presentation/bloc/theme_switch_event.dart';
import 'package:ff_task/features/them_switch/presentation/bloc/theme_swtich_state.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(ThemeSwitchBlock, () {
    late ThemeSwitchBlock themeSwitchBlock;

    setUp(() {
      themeSwitchBlock = ThemeSwitchBlock();
    });

    test('initial state should be ThemeLight', () {
      expect(themeSwitchBlock.state.runtimeType, equals(ThemeLight));
    });
    test('should emit ThemeDark when ThemeSwitchEvent with isDark true is added', () {
      themeSwitchBlock.add(ThemeSwitchEvent(true));
      expectLater(themeSwitchBlock.stream, emitsInOrder([isA<ThemeDark>()]));
    });
  });

  group(RepositoriesBlock, () {
    late RepositoriesBlock bloc;

    setUp(() {
      //  bloc = RepositoriesBlock(GetRepositoriesUseCase());
    });
  });
}
