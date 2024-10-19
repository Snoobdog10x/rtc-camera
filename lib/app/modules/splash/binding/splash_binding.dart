import 'package:ttt_kernel/scr/controller/binding.dart';
import 'package:ttt_kernel/scr/controller/ttt_controller.dart';

import '../controller/splash_controller.dart';

class SplashBiding extends Binding {
  @override
  List<TttController Function()> getControllers() {
    return [
      () => SplashController(),
    ];
  }
}
