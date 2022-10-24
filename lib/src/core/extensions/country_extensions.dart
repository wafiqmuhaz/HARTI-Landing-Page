import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

final Map<String, Map<String, String>> _country = {
  'IDN': {'name': 'Indonesia', 'countryCode': 'ID', 'languageCode': 'id'},
  'JPN': {'name': 'Japan', 'countryCode': 'JP', 'languageCode': 'ja'},
  'USA': {'name': 'USA', 'countryCode': 'US', 'languageCode': 'en'},
};

final Map<String, String> _languages = {
  'en': 'US',
  'ar': 'SA',
  'ja': 'JP',
  'id': 'ID',
};

List<String> get languagesKey => _languages.keys.toList();

String getLanguageFlagCode(String langCode) {
  return _languages[langCode] ?? '';
}

List<String> get countryCodes => _country.keys.toList();

Map<String, String>? getCountryInfo(String countryCode) {
  return _country[countryCode];
}

String getCountryName(String countryCode) {
  return getCountryInfo(countryCode)?['name'] ?? '';
}

String getCountryFlagCode(String countryCode) {
  return getCountryInfo(countryCode)?['countryCode'] ?? '';
}

String getCountryLanguageCode(String countryCode) {
  return getCountryInfo(countryCode)?['languageCode'] ?? '';
}

final Map<String, String> _countryCodeNames = {
  'en': 'USA',
  'ar': 'Saudi Arabia',
  'ja': 'Japan',
  'id': 'Indonesia',
};

extension LocaleExt on Locale {
  String get countryName => _countryCodeNames[languageCode] ?? 'Unknown';
}
