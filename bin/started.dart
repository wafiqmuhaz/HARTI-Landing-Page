import 'dart:io';

import 'features_available.dart';
import 'metadata.dart';

Future<void> main() async {
  await Process.start('dart', ['bin/flavor.dart', 'staging']);

  print("Insert title metadata ?");

  String? title = stdin.readLineSync();

  print("Insert description metadata ?");

  String? description = stdin.readLineSync();

  print("Insert path assets thumbnail metadata (/thumbnail) ?");

  String? image = stdin.readLineSync();

  if (image == null || image.isEmpty) {
    image = '/thumbnail';
  }

  print("Insert path assets splash metadata (icons/Icon-192.png) ?");

  String? splash = stdin.readLineSync();

  if (splash == null || splash.isEmpty) {
    splash = 'icons/Icon-192.png';
  }

  print("Insert path assets favicon metadata (favicon.png) ?");

  String? favicon = stdin.readLineSync();

  if (favicon == null || favicon.isEmpty) {
    favicon = 'favicon.png';
  }

  print(''' 
  ... make metadata with data ...

    'title': $title,
    'description': $description,
    'image': $image,
    'splash': $splash,
    'favicon': $favicon,
  ''');

  makeHtmlmetaData({
    'title': title,
    'description': description,
    'image': image,
    'splash': splash,
    'favicon': favicon,
  });

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
