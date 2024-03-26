import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_them.dart';

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Un simple bool
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppThme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier,AppTheme>(
  (ref) => ThemeNotifier(),
  );

//Controler o Notifier
class ThemeNotifier extends StateNotifier<AppTheme>{

  //STATE = Estado = new AppTheme()
  ThemeNotifier():super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex( int colorIndex ){
    state = state.copyWith(selectedColor: colorIndex);
  }
}