// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Закрыть`
  String get close {
    return Intl.message(
      'Закрыть',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Ваш регион`
  String get your_region {
    return Intl.message(
      'Ваш регион',
      name: 'your_region',
      desc: '',
      args: [],
    );
  }

  /// `Политика конфиденциальности`
  String get privacy_policy {
    return Intl.message(
      'Политика конфиденциальности',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Согласен с политикой конфиденцальности`
  String get agree_wit_privacy_policy {
    return Intl.message(
      'Согласен с политикой конфиденцальности',
      name: 'agree_wit_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Далее`
  String get next {
    return Intl.message(
      'Далее',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `СМС подтверждение`
  String get sms_confirmation {
    return Intl.message(
      'СМС подтверждение',
      name: 'sms_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `изменить`
  String get change {
    return Intl.message(
      'изменить',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Отправить код повторно`
  String get send_code_again {
    return Intl.message(
      'Отправить код повторно',
      name: 'send_code_again',
      desc: '',
      args: [],
    );
  }

  /// `Ваш телефон`
  String get your_phone {
    return Intl.message(
      'Ваш телефон',
      name: 'your_phone',
      desc: '',
      args: [],
    );
  }

  /// `🇰🇿 Казахстан`
  String get kz_with_flag {
    return Intl.message(
      '🇰🇿 Казахстан',
      name: 'kz_with_flag',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'kk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
