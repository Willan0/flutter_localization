import 'package:flutter/material.dart';
import 'package:localization_app/pages/change_language.dart';
import 'package:localization_app/pages/localization_override.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_app/providers/local_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LocalProvider())],
      child: const StartUp(),
    );
  }
}

class StartUp extends StatelessWidget {
  const StartUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localProvider = context.watch<LocalProvider>();
    return MaterialApp(
      title: 'Flutter Localization',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: localProvider.local,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ChangeLaunguagePage(),
    );
  }
}
