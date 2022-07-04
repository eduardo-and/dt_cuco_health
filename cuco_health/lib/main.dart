import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'src/app_widget.dart';
import 'src/core/theme/store/theme_store.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeStore = ThemeStore();
  await themeStore.init();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(Provider(
    create: (_) => themeStore,
    child: const AppWidget(),
  ));
}
