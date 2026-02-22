import 'package:flutter/material.dart';
import 'router.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

@pragma('vm:entry-point')
Future<void> _onBackgroundMessage(RemoteMessage message) async {
  debugPrint('Background message: ${message.notification?.title}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);

  final messaging = FirebaseMessaging.instance;
  await messaging.requestPermission();

  if (defaultTargetPlatform == TargetPlatform.iOS) {
    final apnsToken = await messaging.getAPNSToken();
    if (apnsToken == null) {
      debugPrint('FCM Token: unavailable (iOS simulator has no APNS token)');
      runApp(const MainApp());
      return;
    }
  }

  final token = await messaging.getToken();
  debugPrint('FCM Token: $token');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE61D2B)),
      ),
    );
  }
}
