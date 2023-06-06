import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bloc/my_app.dart';
import 'bloc/theme_reposatry.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialize();
  final themeRepository = ThemeRepository(
    sharedPreferences: await SharedPreferences.getInstance(),
  );
  runApp(App(themeRepository: themeRepository));
}
