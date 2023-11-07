import 'package:flutter/material.dart';
import 'package:localization_app/l10n/l10n.dart';
import 'package:localization_app/pages/change_language.dart';

class LocalProvider extends ChangeNotifier {
  Locale? _local;
  Language _language = Language.english;

  get language => _language;

  get local => _local;

  void changeLanguage(Locale local, language) {
    // if (!L10n.all.contains(local)) return;
    _local = local;
    _language = language;
    notifyListeners();
  }

  void clearLocal() {
    _local = null;
    notifyListeners();
  }
}
