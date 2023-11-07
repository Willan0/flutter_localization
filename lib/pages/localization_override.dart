import 'package:flutter/material.dart';

class LocalizationOverrideView extends StatelessWidget {
  const LocalizationOverrideView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter localization'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Localizations.override(
            locale: const Locale('my'),
            context: context,
            child: Builder(
              builder: (context) => CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2300),
                onDateChanged: (value) {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
