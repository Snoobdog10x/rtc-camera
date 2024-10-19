import 'package:ttt_kernel/scr/base/disposable/ttt_service.dart';
import 'package:ttt_kernel/scr/event_bus/bloc.dart';

class RTCService extends TttService with Bloc {
  @override
  InitPriority get initPriority => InitPriority.ON_SPLASH;

  @override
  void listenEvents() {}
}
