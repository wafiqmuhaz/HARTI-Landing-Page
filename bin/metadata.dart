import 'dart:io';

import 'package:html/dom.dart' as html;

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
}

void makeHtmlmetaData(Map<String, dynamic> args) {
  final indexHtmlFile = File('web/index.html');
  if (!indexHtmlFile.existsSync()) return;

  final document = html.Document.html(indexHtmlFile.readAsStringSync());

  final metas = document.head?.getElementsByTagName('meta') ?? [];
  final links = document.head?.getElementsByTagName('link') ?? [];
  final title = document.head?.getElementsByTagName('title') ?? [];
  final body = document.body?.querySelector('#loading');

  final imgs = body?.getElementsByTagName('img') ?? [];

  imgs.first.attributes['src'] = args['splash'];

  title.first.text = args['title'];

  for (final link in links) {
    if (link.attributes['rel'] == 'icon') {
      link.attributes['href'] = args['favicon'];
    }

    final doc = document.outerHtml;
    indexHtmlFile.writeAsStringSync(doc);
  }

  for (final meta in metas) {
    if (meta.attributes['name'] == 'title' ||
        meta.attributes['property'] == 'og:title' ||
        meta.attributes['name'] == 'apple-mobile-web-app-title') {
      meta.attributes['content'] = args['title'];
    }

    if (meta.attributes['name'] == 'description' ||
        meta.attributes['property'] == 'og:description') {
      meta.attributes['content'] = args['description'];
    }

    if (meta.attributes['property'] == 'og:image' ||
        meta.attributes['property'] == 'og:image:secure') {
      meta.attributes['content'] = args['image'];
    }

    final doc = document.outerHtml;
    indexHtmlFile.writeAsStringSync(doc);
  }
}
