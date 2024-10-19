import 'package:go_router/go_router.dart';
import 'package:ttt_kernel/scr/base/app_service_initializer_extension.dart';
import 'package:ttt_kernel/scr/base/app_store.dart';
import 'package:ttt_kernel/scr/controller/ttt_controller.dart';

import '../../../../generated/routes.dart';

class SplashController extends TttController {
  @override
  void onDispose() {}

  @override
  Future<void> onInit() async {
    await AppStore.onSplash();
    context.goNamed(Routes.NAVIGATOR);
  }
}
