import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_app/providers/local_provider.dart';
import 'package:provider/provider.dart';

class ChangeLaunguagePage extends StatelessWidget {
  const ChangeLaunguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.app_name),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          AppLocalizations.of(context)!.helloWorld,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const ChangeLaunguageView(),
      ]),
    );
  }
}

enum Language { english, myanmar }

class ChangeLaunguageView extends StatelessWidget {
  const ChangeLaunguageView({super.key});

  @override
  Widget build(BuildContext context) {
    final localProvider = context.watch<LocalProvider>();
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: const Text('English'),
            leading: Radio(
              value: Language.english,
              groupValue: localProvider.language,
              onChanged: (language) {
                localProvider.changeLanguage(const Locale('es'), language);
              },
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            title: const Text('Myanmar'),
            leading: Radio(
              value: Language.myanmar,
              groupValue: localProvider.language,
              onChanged: (language) {
                localProvider.changeLanguage(const Locale('my'), language);
              },
            ),
          ),
        ),
      ],
    );
  }
}
