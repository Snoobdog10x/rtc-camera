import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ttt_kernel/scr/controller/ttt_multiple_controller_provider.dart';
import 'package:ttt_kernel/ttt_kernel.dart';

import '../app/modules/splash/binding/splash_binding.dart';
import '../app/modules/splash/view/splash_view.dart';
import 'routes.dart';

final router = GoRouter(
  navigatorKey: AppStore.navigatorKey,
  routes: [
    GoRoute(
      name: Routes.NAVIGATOR,
      path: Routes.NAVIGATOR,
      pageBuilder: (context, state) {
        return MaterialPage(
          child: TttMultipleControllerProvider(
            viewBuilder: () => const SplashView(),
            blocBuilders: SplashBiding().getControllers(),
          ),
        );
      },
    ),
    GoRoute(
      name: Routes.SPLASH,
      path: Routes.SPLASH,
      pageBuilder: (context, state) {
        return MaterialPage(
          child: TttMultipleControllerProvider(
            viewBuilder: () => const SplashView(),
            blocBuilders: SplashBiding().getControllers(),
          ),
        );
      },
    ),
  ],
);
