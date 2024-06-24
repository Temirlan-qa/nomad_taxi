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

  /// `ru`
  String get current_locale {
    return Intl.message(
      'ru',
      name: 'current_locale',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get current_language {
    return Intl.message(
      'Русский',
      name: 'current_language',
      desc: '',
      args: [],
    );
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

  /// `Назад`
  String get back {
    return Intl.message(
      'Назад',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get settings {
    return Intl.message(
      'Настройки',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Смена языка`
  String get change_language {
    return Intl.message(
      'Смена языка',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `Выбор языка`
  String get select_language {
    return Intl.message(
      'Выбор языка',
      name: 'select_language',
      desc: '',
      args: [],
    );
  }

  /// `Город`
  String get city {
    return Intl.message(
      'Город',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Активировать промокод`
  String get activate_promoCode {
    return Intl.message(
      'Активировать промокод',
      name: 'activate_promoCode',
      desc: '',
      args: [],
    );
  }

  /// `Введите промокод`
  String get enter_promoCode {
    return Intl.message(
      'Введите промокод',
      name: 'enter_promoCode',
      desc: '',
      args: [],
    );
  }

  /// `Ответы на популярные вопросы`
  String get answers_popular_questions {
    return Intl.message(
      'Ответы на популярные вопросы',
      name: 'answers_popular_questions',
      desc: '',
      args: [],
    );
  }

  /// `Пополнение бонусов`
  String get refill_bonuses {
    return Intl.message(
      'Пополнение бонусов',
      name: 'refill_bonuses',
      desc: '',
      args: [],
    );
  }

  /// `Использование бонусов`
  String get using_bonuses {
    return Intl.message(
      'Использование бонусов',
      name: 'using_bonuses',
      desc: '',
      args: [],
    );
  }

  /// `Отмена заказа`
  String get cancel_order {
    return Intl.message(
      'Отмена заказа',
      name: 'cancel_order',
      desc: '',
      args: [],
    );
  }

  /// `Забыли вещи в такси`
  String get forgot_stuff {
    return Intl.message(
      'Забыли вещи в такси',
      name: 'forgot_stuff',
      desc: '',
      args: [],
    );
  }

  /// `Водитель отменил заказ`
  String get driver_canceled_order {
    return Intl.message(
      'Водитель отменил заказ',
      name: 'driver_canceled_order',
      desc: '',
      args: [],
    );
  }

  /// `Служба поддержки`
  String get support_service {
    return Intl.message(
      'Служба поддержки',
      name: 'support_service',
      desc: '',
      args: [],
    );
  }

  /// `Написать обращение`
  String get write_appeal {
    return Intl.message(
      'Написать обращение',
      name: 'write_appeal',
      desc: '',
      args: [],
    );
  }

  /// `Помощь`
  String get help {
    return Intl.message(
      'Помощь',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Поздравляем!`
  String get congratulate {
    return Intl.message(
      'Поздравляем!',
      name: 'congratulate',
      desc: '',
      args: [],
    );
  }

  /// `Вы получили {amount} тенге бонусов`
  String you_get_bonus(int amount) {
    return Intl.message(
      'Вы получили $amount тенге бонусов',
      name: 'you_get_bonus',
      desc: '',
      args: [amount],
    );
  }

  /// `Номер машины`
  String get carNumber {
    return Intl.message(
      'Номер машины',
      name: 'carNumber',
      desc: '',
      args: [],
    );
  }

  /// `Модель автомобиля`
  String get carModel {
    return Intl.message(
      'Модель автомобиля',
      name: 'carModel',
      desc: '',
      args: [],
    );
  }

  /// `Ответ разработчика`
  String get answer_dev {
    return Intl.message(
      'Ответ разработчика',
      name: 'answer_dev',
      desc: '',
      args: [],
    );
  }

  /// `Главная`
  String get main {
    return Intl.message(
      'Главная',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `Реферальная программа`
  String get referral_program {
    return Intl.message(
      'Реферальная программа',
      name: 'referral_program',
      desc: '',
      args: [],
    );
  }

  /// `Купить франшизу`
  String get buy_franchise {
    return Intl.message(
      'Купить франшизу',
      name: 'buy_franchise',
      desc: '',
      args: [],
    );
  }

  /// `О приложении`
  String get about_app {
    return Intl.message(
      'О приложении',
      name: 'about_app',
      desc: '',
      args: [],
    );
  }

  /// `Режим водителя`
  String get driver_mode {
    return Intl.message(
      'Режим водителя',
      name: 'driver_mode',
      desc: '',
      args: [],
    );
  }

  /// `Сделано в Казахстане`
  String get made_kazakhstan {
    return Intl.message(
      'Сделано в Казахстане',
      name: 'made_kazakhstan',
      desc: '',
      args: [],
    );
  }

  /// `Версия`
  String get version {
    return Intl.message(
      'Версия',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Разработка компании`
  String get development_by {
    return Intl.message(
      'Разработка компании',
      name: 'development_by',
      desc: '',
      args: [],
    );
  }

  /// `Выйти из режима`
  String get exit_mode {
    return Intl.message(
      'Выйти из режима',
      name: 'exit_mode',
      desc: '',
      args: [],
    );
  }

  /// `Данные машины`
  String get car_data {
    return Intl.message(
      'Данные машины',
      name: 'car_data',
      desc: '',
      args: [],
    );
  }

  /// `Пополнить счет`
  String get top_up_account {
    return Intl.message(
      'Пополнить счет',
      name: 'top_up_account',
      desc: '',
      args: [],
    );
  }

  /// `Ваш счет`
  String get your_account {
    return Intl.message(
      'Ваш счет',
      name: 'your_account',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться приложением`
  String get share_app {
    return Intl.message(
      'Поделиться приложением',
      name: 'share_app',
      desc: '',
      args: [],
    );
  }

  /// `Ваш профиль`
  String get your_profile {
    return Intl.message(
      'Ваш профиль',
      name: 'your_profile',
      desc: '',
      args: [],
    );
  }

  /// `Ваше имя`
  String get your_name {
    return Intl.message(
      'Ваше имя',
      name: 'your_name',
      desc: '',
      args: [],
    );
  }

  /// `Введите адрес`
  String get enterAddress {
    return Intl.message(
      'Введите адрес',
      name: 'enterAddress',
      desc: '',
      args: [],
    );
  }

  /// `На карте`
  String get onMap {
    return Intl.message(
      'На карте',
      name: 'onMap',
      desc: '',
      args: [],
    );
  }

  /// `Ваша фамилия`
  String get your_surname {
    return Intl.message(
      'Ваша фамилия',
      name: 'your_surname',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона`
  String get phone_number {
    return Intl.message(
      'Номер телефона',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Удалить аккаунт`
  String get delete_account {
    return Intl.message(
      'Удалить аккаунт',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Выйти из аккаунта`
  String get log_out_account {
    return Intl.message(
      'Выйти из аккаунта',
      name: 'log_out_account',
      desc: '',
      args: [],
    );
  }

  /// `Вы хотите выйти?`
  String get you_want_exit {
    return Intl.message(
      'Вы хотите выйти?',
      name: 'you_want_exit',
      desc: '',
      args: [],
    );
  }

  /// `После выхода вы можете вернуться в свой аккаунт в любое время. Все ваши данные будут сохранены`
  String get you_want_exit_desc {
    return Intl.message(
      'После выхода вы можете вернуться в свой аккаунт в любое время. Все ваши данные будут сохранены',
      name: 'you_want_exit_desc',
      desc: '',
      args: [],
    );
  }

  /// `Остаться`
  String get stay {
    return Intl.message(
      'Остаться',
      name: 'stay',
      desc: '',
      args: [],
    );
  }

  /// `Удаление не обратимо, все ваши данные будут потеряны`
  String get delete_account_desc {
    return Intl.message(
      'Удаление не обратимо, все ваши данные будут потеряны',
      name: 'delete_account_desc',
      desc: '',
      args: [],
    );
  }

  /// `Есть не сохраненные изменения`
  String get unsaved_changes {
    return Intl.message(
      'Есть не сохраненные изменения',
      name: 'unsaved_changes',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить изменения`
  String get save_changes {
    return Intl.message(
      'Сохранить изменения',
      name: 'save_changes',
      desc: '',
      args: [],
    );
  }

  /// `Доставка`
  String get delivery {
    return Intl.message(
      'Доставка',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Ответ разработчика`
  String get developerAnswer {
    return Intl.message(
      'Ответ разработчика',
      name: 'developerAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Откуда`
  String get where_from {
    return Intl.message(
      'Откуда',
      name: 'where_from',
      desc: '',
      args: [],
    );
  }

  /// `Куда`
  String get where {
    return Intl.message(
      'Куда',
      name: 'where',
      desc: '',
      args: [],
    );
  }

  /// `Коментарии`
  String get comments {
    return Intl.message(
      'Коментарии',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `Принять заказ`
  String get accept_order {
    return Intl.message(
      'Принять заказ',
      name: 'accept_order',
      desc: '',
      args: [],
    );
  }

  /// `Вернутся назад`
  String get go_back {
    return Intl.message(
      'Вернутся назад',
      name: 'go_back',
      desc: '',
      args: [],
    );
  }

  /// `Адрес прибытия`
  String get arrival_address {
    return Intl.message(
      'Адрес прибытия',
      name: 'arrival_address',
      desc: '',
      args: [],
    );
  }

  /// `Бонусы тоже деньги`
  String get bonuses_also_money {
    return Intl.message(
      'Бонусы тоже деньги',
      name: 'bonuses_also_money',
      desc: '',
      args: [],
    );
  }

  /// `Бонусы поступают вам на счет, вы можете на них покупать пакеты времени, оплачивать комиссию такси или выводить на свою карту`
  String get bonuses_desc {
    return Intl.message(
      'Бонусы поступают вам на счет, вы можете на них покупать пакеты времени, оплачивать комиссию такси или выводить на свою карту',
      name: 'bonuses_desc',
      desc: '',
      args: [],
    );
  }

  /// `Поздравляем с выполненным заказом!`
  String get congrats_completed_order {
    return Intl.message(
      'Поздравляем с выполненным заказом!',
      name: 'congrats_completed_order',
      desc: '',
      args: [],
    );
  }

  /// `Вы можете отменить через`
  String get can_cancel_via {
    return Intl.message(
      'Вы можете отменить через',
      name: 'can_cancel_via',
      desc: '',
      args: [],
    );
  }

  /// `Приехал на точку вызова`
  String get arrived_call_point {
    return Intl.message(
      'Приехал на точку вызова',
      name: 'arrived_call_point',
      desc: '',
      args: [],
    );
  }

  /// `Отменить заказ`
  String get cancel_the_order {
    return Intl.message(
      'Отменить заказ',
      name: 'cancel_the_order',
      desc: '',
      args: [],
    );
  }

  /// `минуты`
  String get minutes {
    return Intl.message(
      'минуты',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `Позвонить`
  String get call {
    return Intl.message(
      'Позвонить',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Маршрут`
  String get route {
    return Intl.message(
      'Маршрут',
      name: 'route',
      desc: '',
      args: [],
    );
  }

  /// `Клиент`
  String get client {
    return Intl.message(
      'Клиент',
      name: 'client',
      desc: '',
      args: [],
    );
  }

  /// `Подробнее`
  String get more_detailed {
    return Intl.message(
      'Подробнее',
      name: 'more_detailed',
      desc: '',
      args: [],
    );
  }

  /// `На ваш счет`
  String get to_your_account {
    return Intl.message(
      'На ваш счет',
      name: 'to_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Наличными`
  String get by_cash {
    return Intl.message(
      'Наличными',
      name: 'by_cash',
      desc: '',
      args: [],
    );
  }

  /// `В процессе`
  String get in_progress {
    return Intl.message(
      'В процессе',
      name: 'in_progress',
      desc: '',
      args: [],
    );
  }

  /// `Такси`
  String get taxi {
    return Intl.message(
      'Такси',
      name: 'taxi',
      desc: '',
      args: [],
    );
  }

  /// `Детали`
  String get details {
    return Intl.message(
      'Детали',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `На линии`
  String get on_line {
    return Intl.message(
      'На линии',
      name: 'on_line',
      desc: '',
      args: [],
    );
  }

  /// `Выполненно`
  String get done {
    return Intl.message(
      'Выполненно',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Забрал доствку`
  String get took_delivery {
    return Intl.message(
      'Забрал доствку',
      name: 'took_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Начать поездку`
  String get start_trip {
    return Intl.message(
      'Начать поездку',
      name: 'start_trip',
      desc: '',
      args: [],
    );
  }

  /// `Осталось`
  String get left {
    return Intl.message(
      'Осталось',
      name: 'left',
      desc: '',
      args: [],
    );
  }

  /// `Обновить`
  String get update {
    return Intl.message(
      'Обновить',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Указанные данные недействительны.`
  String get invalidInfoError {
    return Intl.message(
      'Указанные данные недействительны.',
      name: 'invalidInfoError',
      desc: '',
      args: [],
    );
  }

  /// `Статус заказа`
  String get order_status {
    return Intl.message(
      'Статус заказа',
      name: 'order_status',
      desc: '',
      args: [],
    );
  }

  /// `Если клиент не выходит, и не возможно с ним связаться, то вы можете отменить заказ`
  String get client_not_come_out_desc {
    return Intl.message(
      'Если клиент не выходит, и не возможно с ним связаться, то вы можете отменить заказ',
      name: 'client_not_come_out_desc',
      desc: '',
      args: [],
    );
  }

  /// `Добро пожаловать в режим водителя 👋`
  String get driver_mode_intro_header1 {
    return Intl.message(
      'Добро пожаловать в режим водителя 👋',
      name: 'driver_mode_intro_header1',
      desc: '',
      args: [],
    );
  }

  /// `Возите людей, выполняйте заказы на доставки посылок внутри города и зарабатывайте деньги`
  String get driver_mode_intro_header2 {
    return Intl.message(
      'Возите людей, выполняйте заказы на доставки посылок внутри города и зарабатывайте деньги',
      name: 'driver_mode_intro_header2',
      desc: '',
      args: [],
    );
  }

  /// `Но перед началом работы просим вас внесити данные вашей машины, чтобы клиенты могли определить вас.`
  String get driver_mode_intro_header3 {
    return Intl.message(
      'Но перед началом работы просим вас внесити данные вашей машины, чтобы клиенты могли определить вас.',
      name: 'driver_mode_intro_header3',
      desc: '',
      args: [],
    );
  }

  /// `Удачной поездки =)`
  String get driver_mode_intro_header4 {
    return Intl.message(
      'Удачной поездки =)',
      name: 'driver_mode_intro_header4',
      desc: '',
      args: [],
    );
  }

  /// `Внести данные водителя`
  String get enter_driver_info {
    return Intl.message(
      'Внести данные водителя',
      name: 'enter_driver_info',
      desc: '',
      args: [],
    );
  }

  /// `Введите номер`
  String get enter_car_number {
    return Intl.message(
      'Введите номер',
      name: 'enter_car_number',
      desc: '',
      args: [],
    );
  }

  /// `Введите информацию`
  String get enter_info {
    return Intl.message(
      'Введите информацию',
      name: 'enter_info',
      desc: '',
      args: [],
    );
  }

  /// `Введите в следующем порядке через запятую:\nЦвет, Марка, Модель (кузов)`
  String get car_info_hint_text {
    return Intl.message(
      'Введите в следующем порядке через запятую:\nЦвет, Марка, Модель (кузов)',
      name: 'car_info_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Нажмите чтобы скопировать`
  String get tap_to_copy {
    return Intl.message(
      'Нажмите чтобы скопировать',
      name: 'tap_to_copy',
      desc: '',
      args: [],
    );
  }

  /// `Отправить чек`
  String get send_receipt {
    return Intl.message(
      'Отправить чек',
      name: 'send_receipt',
      desc: '',
      args: [],
    );
  }

  /// `Введите нужную сумму и деньги пуступять на ваш счет в приложении Nomad Taxi`
  String get enter_amount {
    return Intl.message(
      'Введите нужную сумму и деньги пуступять на ваш счет в приложении Nomad Taxi',
      name: 'enter_amount',
      desc: '',
      args: [],
    );
  }

  /// `Далее введите свой ID номер`
  String get enter_ID {
    return Intl.message(
      'Далее введите свой ID номер',
      name: 'enter_ID',
      desc: '',
      args: [],
    );
  }

  /// `Откройте приложение Kaspi.kz и перейдите в раздел платежи, в пойск введите Nomad Taxi`
  String get open_kaspi_app {
    return Intl.message(
      'Откройте приложение Kaspi.kz и перейдите в раздел платежи, в пойск введите Nomad Taxi',
      name: 'open_kaspi_app',
      desc: '',
      args: [],
    );
  }

  /// `шаг`
  String get step {
    return Intl.message(
      'шаг',
      name: 'step',
      desc: '',
      args: [],
    );
  }

  /// `Инструкция`
  String get instruction {
    return Intl.message(
      'Инструкция',
      name: 'instruction',
      desc: '',
      args: [],
    );
  }

  /// `Ваш баланс`
  String get your_balance {
    return Intl.message(
      'Ваш баланс',
      name: 'your_balance',
      desc: '',
      args: [],
    );
  }

  /// `Ваш ID`
  String get your_ID {
    return Intl.message(
      'Ваш ID',
      name: 'your_ID',
      desc: '',
      args: [],
    );
  }

  /// `Пополнить счет\nв приложении Kaspi.kz`
  String get recharge_kaspi {
    return Intl.message(
      'Пополнить счет\nв приложении Kaspi.kz',
      name: 'recharge_kaspi',
      desc: '',
      args: [],
    );
  }

  /// `Вывести деньги`
  String get withdraw_money {
    return Intl.message(
      'Вывести деньги',
      name: 'withdraw_money',
      desc: '',
      args: [],
    );
  }

  /// `Пополнить счет`
  String get recharge_account {
    return Intl.message(
      'Пополнить счет',
      name: 'recharge_account',
      desc: '',
      args: [],
    );
  }

  /// `Ваши бонусы`
  String get your_bonuses {
    return Intl.message(
      'Ваши бонусы',
      name: 'your_bonuses',
      desc: '',
      args: [],
    );
  }

  /// `Ваш тариф`
  String get your_tariff {
    return Intl.message(
      'Ваш тариф',
      name: 'your_tariff',
      desc: '',
      args: [],
    );
  }

  /// `Бесплатный`
  String get free {
    return Intl.message(
      'Бесплатный',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Выберите тариф до начала работы`
  String get select_tariff {
    return Intl.message(
      'Выберите тариф до начала работы',
      name: 'select_tariff',
      desc: '',
      args: [],
    );
  }

  /// `Выйти на линию`
  String get go_online {
    return Intl.message(
      'Выйти на линию',
      name: 'go_online',
      desc: '',
      args: [],
    );
  }

  /// `Активен`
  String get active {
    return Intl.message(
      'Активен',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Заказы`
  String get orders {
    return Intl.message(
      'Заказы',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Выйдете на линию`
  String get go_offline {
    return Intl.message(
      'Выйдете на линию',
      name: 'go_offline',
      desc: '',
      args: [],
    );
  }

  /// `Вывести деньги`
  String get withdraw_funds {
    return Intl.message(
      'Вывести деньги',
      name: 'withdraw_funds',
      desc: '',
      args: [],
    );
  }

  /// `Выбор тарифа`
  String get tariff_selection {
    return Intl.message(
      'Выбор тарифа',
      name: 'tariff_selection',
      desc: '',
      args: [],
    );
  }

  /// `Баланс водителя`
  String get driver_balance {
    return Intl.message(
      'Баланс водителя',
      name: 'driver_balance',
      desc: '',
      args: [],
    );
  }

  /// `Основные`
  String get basic {
    return Intl.message(
      'Основные',
      name: 'basic',
      desc: '',
      args: [],
    );
  }

  /// `Выбранный тариф`
  String get selected_tariff {
    return Intl.message(
      'Выбранный тариф',
      name: 'selected_tariff',
      desc: '',
      args: [],
    );
  }

  /// `Пакеты времени`
  String get time_packages {
    return Intl.message(
      'Пакеты времени',
      name: 'time_packages',
      desc: '',
      args: [],
    );
  }

  /// `Инструкция как вывести деньги`
  String get instruction_to_withdraw {
    return Intl.message(
      'Инструкция как вывести деньги',
      name: 'instruction_to_withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Вы можете вывести не ограниченную сумму с вашего баланса`
  String get withdraw_infinite {
    return Intl.message(
      'Вы можете вывести не ограниченную сумму с вашего баланса',
      name: 'withdraw_infinite',
      desc: '',
      args: [],
    );
  }

  /// `Скопируйте ваш ID`
  String get copy_your_id {
    return Intl.message(
      'Скопируйте ваш ID',
      name: 'copy_your_id',
      desc: '',
      args: [],
    );
  }

  /// `Напишите нам в ватсап запрос на вывод средств и отвте номер вашего ID и номер вашей карты Kaspi GOLD, и наши менеджеры переведут деньги вам на счет`
  String get write_to_whatsapp_about_withdraw {
    return Intl.message(
      'Напишите нам в ватсап запрос на вывод средств и отвте номер вашего ID и номер вашей карты Kaspi GOLD, и наши менеджеры переведут деньги вам на счет',
      name: 'write_to_whatsapp_about_withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Куда едим`
  String get where_are_going {
    return Intl.message(
      'Куда едим',
      name: 'where_are_going',
      desc: '',
      args: [],
    );
  }

  /// `История`
  String get history {
    return Intl.message(
      'История',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Тут будут отображатся ваши последние поездки`
  String get recent_trips_will_displayed_here {
    return Intl.message(
      'Тут будут отображатся ваши последние поездки',
      name: 'recent_trips_will_displayed_here',
      desc: '',
      args: [],
    );
  }

  /// `Ваше местоположение`
  String get your_location {
    return Intl.message(
      'Ваше местоположение',
      name: 'your_location',
      desc: '',
      args: [],
    );
  }

  /// `Заказать такси`
  String get order_taxi {
    return Intl.message(
      'Заказать такси',
      name: 'order_taxi',
      desc: '',
      args: [],
    );
  }

  /// `Есть активный заказ`
  String get have_active_order {
    return Intl.message(
      'Есть активный заказ',
      name: 'have_active_order',
      desc: '',
      args: [],
    );
  }

  /// `Завершить заказ`
  String get finish_order {
    return Intl.message(
      'Завершить заказ',
      name: 'finish_order',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать`
  String get select {
    return Intl.message(
      'Выбрать',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Активный заказ`
  String get active_order {
    return Intl.message(
      'Активный заказ',
      name: 'active_order',
      desc: '',
      args: [],
    );
  }

  /// `Открыть`
  String get open {
    return Intl.message(
      'Открыть',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Использовать бонусы`
  String get use_bonuses {
    return Intl.message(
      'Использовать бонусы',
      name: 'use_bonuses',
      desc: '',
      args: [],
    );
  }

  /// `Начисляем бонусов за каждый заказ`
  String get bonuses_each_order {
    return Intl.message(
      'Начисляем бонусов за каждый заказ',
      name: 'bonuses_each_order',
      desc: '',
      args: [],
    );
  }

  /// `Изменить стоимость`
  String get change_price {
    return Intl.message(
      'Изменить стоимость',
      name: 'change_price',
      desc: '',
      args: [],
    );
  }

  /// `Машина`
  String get car {
    return Intl.message(
      'Машина',
      name: 'car',
      desc: '',
      args: [],
    );
  }

  /// `Детали заказа`
  String get order_details {
    return Intl.message(
      'Детали заказа',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Ваш заказ приняли`
  String get order_accepted {
    return Intl.message(
      'Ваш заказ приняли',
      name: 'order_accepted',
      desc: '',
      args: [],
    );
  }

  /// `Приблизительное время\nприбытия водителя`
  String get approximate_time_arrival {
    return Intl.message(
      'Приблизительное время\nприбытия водителя',
      name: 'approximate_time_arrival',
      desc: '',
      args: [],
    );
  }

  /// `Удачной поездки!`
  String get successful_ride {
    return Intl.message(
      'Удачной поездки!',
      name: 'successful_ride',
      desc: '',
      args: [],
    );
  }

  /// `Можете закрыть окно, и вернуться cюда в любое время`
  String get close_window_and_come_back {
    return Intl.message(
      'Можете закрыть окно, и вернуться cюда в любое время',
      name: 'close_window_and_come_back',
      desc: '',
      args: [],
    );
  }

  /// `Идет поиск`
  String get searching {
    return Intl.message(
      'Идет поиск',
      name: 'searching',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость`
  String get price {
    return Intl.message(
      'Стоимость',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Ваш водитель`
  String get your_driver {
    return Intl.message(
      'Ваш водитель',
      name: 'your_driver',
      desc: '',
      args: [],
    );
  }

  /// `В поиске`
  String get on_search {
    return Intl.message(
      'В поиске',
      name: 'on_search',
      desc: '',
      args: [],
    );
  }

  /// `Отменён`
  String get canceled {
    return Intl.message(
      'Отменён',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `Спасибо за поездку!`
  String get thank_for_ride {
    return Intl.message(
      'Спасибо за поездку!',
      name: 'thank_for_ride',
      desc: '',
      args: [],
    );
  }

  /// `Время ожидания`
  String get wating_time {
    return Intl.message(
      'Время ожидания',
      name: 'wating_time',
      desc: '',
      args: [],
    );
  }

  /// `Вас ждет водитель!`
  String get driver_waiting {
    return Intl.message(
      'Вас ждет водитель!',
      name: 'driver_waiting',
      desc: '',
      args: [],
    );
  }

  /// `секунд`
  String get seconds {
    return Intl.message(
      'секунд',
      name: 'seconds',
      desc: '',
      args: [],
    );
  }

  /// `На данный момент нет активных заказов`
  String get noActiveOrdersAtTheMoment {
    return Intl.message(
      'На данный момент нет активных заказов',
      name: 'noActiveOrdersAtTheMoment',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, введите модель автомобиля`
  String get driverRequirement1 {
    return Intl.message(
      'Пожалуйста, введите модель автомобиля',
      name: 'driverRequirement1',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, введите номер автомобиля`
  String get driverRequirement2 {
    return Intl.message(
      'Пожалуйста, введите номер автомобиля',
      name: 'driverRequirement2',
      desc: '',
      args: [],
    );
  }

  /// `Далее введите свой ID номер`
  String get enter_id {
    return Intl.message(
      'Далее введите свой ID номер',
      name: 'enter_id',
      desc: '',
      args: [],
    );
  }

  /// `Ваш ID`
  String get your_id {
    return Intl.message(
      'Ваш ID',
      name: 'your_id',
      desc: '',
      args: [],
    );
  }

  /// `На вашем балансе недостаточно средств для приема заказов`
  String get youDoNotHaveEnoughBalance {
    return Intl.message(
      'На вашем балансе недостаточно средств для приема заказов',
      name: 'youDoNotHaveEnoughBalance',
      desc: '',
      args: [],
    );
  }

  /// `Поездка началась`
  String get startRoute {
    return Intl.message(
      'Поездка началась',
      name: 'startRoute',
      desc: '',
      args: [],
    );
  }

  /// `Поездка началась`
  String get routeStarted {
    return Intl.message(
      'Поездка началась',
      name: 'routeStarted',
      desc: '',
      args: [],
    );
  }

  /// `Ожидание`
  String get awaiting {
    return Intl.message(
      'Ожидание',
      name: 'awaiting',
      desc: '',
      args: [],
    );
  }

  /// `Принято`
  String get accepted {
    return Intl.message(
      'Принято',
      name: 'accepted',
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
