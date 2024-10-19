import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ttt_kernel/scr/app/ttt_app.dart';
import 'package:ttt_kernel/scr/base/app_store.dart';

import 'generated/colors.gen.dart';
import 'generated/variables_app_store_ext.dart';

class App extends TttApp {
  const App({
    super.key,
    required super.sharedVariables,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends TttAppState<App> {
  @override
  Future<void> initApp() async {
    await Firebase.initializeApp(options: AppStore.firebaseOptions);
    super.initApp();
  }

  @override
  ThemeData? get themeData {
    var theme = ThemeData.light();
    var width = MediaQuery.sizeOf(context).width;

    return theme.copyWith(
      appBarTheme: theme.appBarTheme.copyWith(
        titleTextStyle: TextStyle(
          fontSize: width * 0.055,
          color: ColorName.white,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: ColorName.darkBlue,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(width * 0.09),
            bottomLeft: Radius.circular(width * 0.09),
          ),
        ),
      ),
      colorScheme: theme.colorScheme.copyWith(
        background: ColorName.background,
      ),
    );
  }
}
