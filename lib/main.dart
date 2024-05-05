import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'firebase_options_dev.dart';
import 'firebase_options_prod.dart';
import 'util/app_info.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: AppFlavor.isProd
        ? DefaultFirebaseOptionsProd.currentPlatform
        : DefaultFirebaseOptionsDev.currentPlatform,
  );

  runApp(const ProviderScope(child: App()));
}
