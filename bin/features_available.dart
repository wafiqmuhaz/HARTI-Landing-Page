import 'dart:io';

Future<void> main() async {
  print("Make Available features auth (Yes/No) ?");

  String? auth = stdin.readLineSync();
  bool authB = auth!.toLowerCase() == 'yes' ? true : false;

  print("Make Available features POS (Yes/No) ?");

  String? pos = stdin.readLineSync();
  bool posB = pos!.toLowerCase() == 'yes' ? true : false;

  print("Make Available features Chat and Notification (Yes/No) ?");

  String? chat = stdin.readLineSync();
  bool chatB = chat!.toLowerCase() == 'yes' ? true : false;

  print("Make Available features Purchase (Yes/No) ?");

  String? purchase = stdin.readLineSync();
  bool purchaseB = purchase!.toLowerCase() == 'yes' ? true : false;

  print("Make Available features Wallet (Yes/No) ?");

  String? wallet = stdin.readLineSync();
  bool walletB = wallet!.toLowerCase() == 'yes' ? true : false;

  if (authB) {
    print('make auth features ...');
    await Future.delayed(Duration(seconds: 1), () {
      makeAvailableAuth();
    });
  }

  if (posB) {
    print('make pos features ...');
    await Future.delayed(Duration(seconds: 1), () {
      makeAvailablePOS();
    });
  }

  if (chatB) {
    print('make chat features ...');
    await Future.delayed(Duration(seconds: 1), () {
      makeAvailableChat();
    });
  }

  if (purchaseB) {
    print('make purhcase features ...');
    await Future.delayed(Duration(seconds: 1), () {
      makeAvailablePurchase();
    });
  }

  if (walletB) {
    print('make wallet features ...');
    await Future.delayed(Duration(seconds: 1), () {
      makeAvailableWallet();
    });
  }
}

void makeAvailableWallet() {
  if (isExist(
    fileName: 'pubspec.yaml',
    exist: 'xetia_walletconnect',
  )) {
    throw Exception('Features package already exist');
  }

  writeContent(
    fileName: 'pubspec.yaml',
    contentName: '''
# DONT REMOVE THIS LINE PACKAGE XETIA
  xetia_walletconnect:
    hosted: https://pub.xetia.dev
    version: ^1.108.7

  xetia_wallet_interface:
    hosted: https://pub.xetia.dev
    version: ^0.0.62+7

  xetia_wallet:
    hosted: https://pub.xetia.dev
    version: ^0.0.72+7

  xetia_wallet_plugin:
    hosted: https://pub.xetia.dev
    version: ^0.0.51+7
''',
    split: '# DONT REMOVE THIS LINE PACKAGE XETIA',
  );

  if (isExist(
    fileName: 'lib/main.dart',
    exist: 'XetiaWalletPlugin',
  )) {
    throw Exception('Features package already exist');
  }

  writeContent(
    fileName: 'lib/main.dart',
    contentName: '''
// DONT REMOVE THIS LINE PACKAGE XETIA
          XetiaWalletPlugin(
            walletConnectorBuilder: () {
              return [
                WallectConnectConnector(),
                XetiaWalletConnector('HARTi Wallet'),
              ];
            },
          ),
''',
    split: '// DONT REMOVE THIS LINE PACKAGE XETIA',
    import: '''
import 'package:xetia_wallet/xetia_wallet.dart';
import 'package:xetia_wallet_plugin/xetia_wallet_plugin.dart';
import 'package:xetia_walletconnect/xetia_walletconnect.dart';
''',
  );
}

void makeAvailableAuth() {
  if (isExist(
    fileName: 'pubspec.yaml',
    exist: 'xetia_auth',
  )) {
    throw Exception('Features package already exist');
  }

  writeContent(
    fileName: 'pubspec.yaml',
    contentName: '''
# DONT REMOVE THIS LINE PACKAGE XETIA
  xetia_auth:
    hosted: https://pub.xetia.dev
    version: ^1.96.7

  xetia_auth_interface:
    hosted: https://pub.xetia.dev
    version: ^0.0.56+7
''',
    split: '# DONT REMOVE THIS LINE PACKAGE XETIA',
  );

  if (isExist(
    fileName: 'lib/main.dart',
    exist: 'XetiaAuthPlugin',
  )) {
    throw Exception('Features package already exist');
  }

  writeContent(
    fileName: 'lib/main.dart',
    contentName: '''
// DONT REMOVE THIS LINE PACKAGE XETIA
          XetiaAuthPlugin(
              // TODO: insert dynamic link and reset password url value
            dynamicLinkDomain: '',
              // TODO: insert dynamic link and reset password url value
            resetPasswordUrl: '',
            authMethods: [
              ...XetiaAuthPlugin.defaultAuthMethods,
            ],
          ),
''',
    split: '// DONT REMOVE THIS LINE PACKAGE XETIA',
    import: "import 'package:xetia_auth/xetia_auth.dart';",
  );

  final file = File('lib/src/ui/pages/example_auth.dart');
  if (file.existsSync()) {
    throw Exception('example auth already exist');
  }

  final features = File('features/auth/example_auth.dart');

  final output = File('lib/src/ui/pages/example_auth.dart');
  output.writeAsStringSync(features.readAsStringSync(), flush: true);
}

void makeAvailableChat() {
  if (isExist(
    fileName: 'pubspec.yaml',
    exist: 'xetia_notification',
  )) {
    throw Exception('Features package already exist');
  }

  writeContent(
    fileName: 'pubspec.yaml',
    contentName: '''
# DONT REMOVE THIS LINE PACKAGE XETIA
  xetia_chat_interface:
    hosted: https://pub.xetia.dev
    version: ^1.78.4

  xetia_chat:
    hosted: https://pub.xetia.dev
    version: ^1.97.7

  xetia_notification:
    hosted: https://pub.xetia.dev
    version: ^1.86.7
''',
    split: '# DONT REMOVE THIS LINE PACKAGE XETIA',
  );

  if (isExist(
    fileName: 'lib/main.dart',
    exist: 'XetiaNotificationPlugin',
  )) {
    throw Exception('Features package already exist');
  }

  writeContent(
    fileName: 'lib/main.dart',
    contentName: '''
// DONT REMOVE THIS LINE PACKAGE XETIA
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
''',
    split: '// DONT REMOVE THIS LINE PACKAGE XETIA',
    import: '''
import 'package:xetia_chat/xetia_chat.dart';
import 'package:xetia_notification/xetia_notification.dart';
''',
  );

  final file = File('lib/src/ui/pages/example_chat.dart');
  if (file.existsSync()) {
    throw Exception('example chat already exist');
  }

  final features = File('features/chat/example_chat.dart');

  final output = File('lib/src/ui/pages/example_chat.dart');
  output.writeAsStringSync(features.readAsStringSync(), flush: true);
}

void makeAvailablePOS() {
  if (isExist(
    fileName: 'pubspec.yaml',
    exist: 'xetia_pos',
  )) {
    throw Exception('Features package already exist');
  }

  writeContent(
    fileName: 'pubspec.yaml',
    contentName: '''
# DONT REMOVE THIS LINE PACKAGE XETIA
  xetia_pos:
    hosted: https://pub.xetia.dev
    version: ^1.84.7
''',
    split: '# DONT REMOVE THIS LINE PACKAGE XETIA',
  );

  if (isExist(
    fileName: 'lib/main.dart',
    exist: 'XetiaPosPlugin',
  )) {
    throw Exception('Features package already exist');
  }

  writeContent(
    fileName: 'lib/main.dart',
    contentName: '''
// DONT REMOVE THIS LINE PACKAGE XETIA
           XetiaPosPlugin(
            onFindProduct: (BuildContext context, String? entitySlug) async {
              // TODO: insert value find product page
            },
            onPrintReceipt: (
              BuildContext context,
              PurchaseDetail purchaseDetail,
            ) {
              // TODO: insert value on print receipt page
            },
          ),
''',
    split: '// DONT REMOVE THIS LINE PACKAGE XETIA',
    import: '''
import 'package:xetia_pos/xetia_pos.dart';
''',
  );

  final file = File('lib/src/ui/pages/example_pos.dart');
  if (file.existsSync()) {
    throw Exception('example chat already exist');
  }

  final features = File('features/pos/example_pos.dart');

  final output = File('lib/src/ui/pages/example_pos.dart');
  output.writeAsStringSync(features.readAsStringSync(), flush: true);
}

void makeAvailablePurchase() {
  if (isExist(
    fileName: 'pubspec.yaml',
    exist: 'xetia_purchase',
  )) {
    throw Exception('Features package already exist');
  }

  writeContent(
    fileName: 'pubspec.yaml',
    contentName: '''
# DONT REMOVE THIS LINE PACKAGE XETIA
  xetia_purchase:
    hosted: https://pub.xetia.dev
    version: ^1.98.7
''',
    split: '# DONT REMOVE THIS LINE PACKAGE XETIA',
  );

  if (isExist(
    fileName: 'lib/main.dart',
    exist: 'XetiaPurchasePlugin',
  )) {
    throw Exception('Features package already exist');
  }

  writeContent(
    fileName: 'lib/main.dart',
    contentName: '''
// DONT REMOVE THIS LINE PACKAGE XETIA
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
''',
    split: '// DONT REMOVE THIS LINE PACKAGE XETIA',
    import: '''
import 'package:xetia_purchase/xetia_purchase.dart';
''',
  );
}

bool isExist({
  required String fileName,
  required String exist,
}) {
  final file = File(fileName);
  var content = file.readAsStringSync();

  return content.contains(exist);
}

void writeContent({
  required String fileName,
  required String contentName,
  required String split,
  String? import,
}) {
  final file = File(fileName);
  var content = file.readAsStringSync();

  if (import != null) {
    content = import + content;
  }

  final splitContent = content.split(split);

  content = splitContent[0] + contentName + splitContent[1];

  file.writeAsStringSync(content, flush: true);
}
