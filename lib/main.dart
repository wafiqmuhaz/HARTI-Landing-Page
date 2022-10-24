import 'package:xetia_wallet/xetia_wallet.dart';
import 'package:xetia_wallet_plugin/xetia_wallet_plugin.dart';
import 'package:xetia_walletconnect/xetia_walletconnect.dart';
import 'package:xetia_purchase/xetia_purchase.dart';
import 'package:xetia_chat/xetia_chat.dart';
import 'package:xetia_notification/xetia_notification.dart';
// import 'package:xetia_pos/xetia_pos.dart';
import 'package:xetia_auth/xetia_auth.dart';import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:model_factory/model_factory.dart';
import 'package:xetia_boilerplate/firebase_options.dart';
import 'package:xetia_boilerplate/flavor.dart';
import 'package:xetia_boilerplate/src/core/context/localization_context.dart';
import 'package:xetia_boilerplate/src/core/localizations/generated/app_localizations.dart';
import 'package:xetia_boilerplate/src/core/routes/routes.dart';
import 'package:xetia_boilerplate/src/ui/theme/dark_theme.dart';
import 'package:xetia_boilerplate/src/ui/theme/light_theme.dart';
import 'package:xetia_core/xetia_core.dart';
import 'package:xetia_widgets/xetia_widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUrlStrategy(PathUrlStrategy());

  await Xetia.initializeApp(
    domain: kApiDomain,
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    supportedLocales: AppLocalizations.supportedLocales,
    errorHandlers: {
      FieldParseException: (err) => Text(
            (err as FieldParseException).innerException.toString(),
          ),
    },
    plugins: [
      XetiaWidgetsPlugin(
        progressBuilder: (context, value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      // DONT REMOVE THIS LINE PACKAGE XETIA
          XetiaWalletPlugin(
            walletConnectorBuilder: () {
              return [
                WallectConnectConnector(),
                XetiaWalletConnector('HARTi Wallet'),
              ];
            },
          ),

           XetiaPurchasePlugin(
            allowShareCart: false,
            enableCashier: false,
            onOpenProductDetail: (context, productSlug) {
              // TODO: insert value on product detail
            },
            onOpenStore: (context, entitySlug) {
              // TODO: insert value on open store 
            },
            onSelectShippingAddress: (context) async {
              // TODO: insert value on select shipping address
            },
            onSelectProduct: (context) async {
              // TODO: insert value on select product
            },
            onSelectFriend: (BuildContext context) async {
              // TODO: insert value on select friend
              return null;
            },
          ),

           XetiaChatPlugin(
            chatMessageKinds: [
              // TODO: available chat message page
            ],
            useChatBackground: false,
            broadcastEnabled: (context) {
              // TODO: inside broadcast value
              return false;
            },
          ),
          XetiaNotificationPlugin(
            onNotificationOpened: (context, data, isAppTerminated) async {
              // TODO: insert notifiaction opened value
            },
          ),

          //  XetiaPosPlugin(
          //   onFindProduct: (BuildContext context, String? entitySlug) async {
          //     // TODO: insert value find product page
          //   },
          //   onPrintReceipt: (
          //     BuildContext context,
          //     PurchaseDetail purchaseDetail,
          //   ) {
          //     // TODO: insert value on print receipt page
          //   },
          // ),

          XetiaAuthPlugin(
              // TODO: insert dynamic link and reset password url value
            dynamicLinkDomain: '',
              // TODO: insert dynamic link and reset password url value
            resetPasswordUrl: '',
            authMethods: [
              ...XetiaAuthPlugin.defaultAuthMethods,
            ],
          ),

    ],
    defaultCountryCode: 'JPN',
    defaultCurrencyCode: 'JPY',
    defaultLanguageCode: 'ja',
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.scheduleFrameCallback((timeStamp) {
      js.context.callMethod('completeSplash');
    });
  }

  @override
  Widget build(BuildContext context) {
    return XetiaWeb(
      databaseVersion: 3,
      routes: routes,
      onGenerateTitle: (context) => context.l10n.kAppName,
      theme: lightTheme,
      darkTheme: darkTheme,
      localizationsDelegate: const [
        AppLocalizations.delegate,
      ],
    );
  }
}
