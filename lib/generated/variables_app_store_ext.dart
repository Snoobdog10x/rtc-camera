import 'package:firebase_core/firebase_core.dart';
import 'package:ttt_kernel/scr/base/app_store_interface.dart';

import '../firebase_options.dart';

extension VariablesAppStoreExt on AppStoreInterface {
  FirebaseOptions get firebaseOptions => DefaultFirebaseOptions.currentPlatform;
}
