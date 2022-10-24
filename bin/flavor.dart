import 'dart:io';

import 'package:yaml/yaml.dart';
import 'package:html/dom.dart' as html;

void main(List<String> args) {
  final filePub = File('pubspec.yaml');
  var content = filePub.readAsStringSync();
  final pubspecYaml = loadYaml(content);

  final services = pubspecYaml['services'];

  final flavor = args.first;

  if (services == 'xetia') {
    final file = File('flavors/xetia/$flavor.dart');
    if (!file.existsSync()) {
      throw Exception('$flavor not found');
    }

    String contentFile = file.readAsStringSync();
    contentFile = '''// don't edit this file by hand
// use :
//      flutter pub run bin/flavor production
// or :
//      flutter pub run bin/flavor staging

''' +
        contentFile;

    final output = File('lib/flavor.dart');
    output.writeAsStringSync(contentFile, flush: true);

    copy('xetia/$flavor', 'firebase_options.dart', 'lib');
  } else if (services == 'harti') {
    final file = File('flavors/harti/$flavor.dart');
    if (!file.existsSync()) {
      throw Exception('$flavor not found');
    }

    String contentFile = file.readAsStringSync();
    contentFile = '''// don't edit this file by hand
// use :
//      flutter pub run bin/flavor production
// or :
//      flutter pub run bin/flavor staging

''' +
        contentFile;

    final output = File('lib/flavor.dart');
    output.writeAsStringSync(contentFile, flush: true);

    copy('harti/$flavor', 'firebase_options.dart', 'lib');
  }

  updateWebGoogleInInMeta(flavor, services);
}

void copy(String flavor, String file, String dest, [String? destFile]) {
  final f = File('flavors/$flavor/$file');
  f.copySync('$dest/${destFile ?? file}');
}

void updateWebGoogleInInMeta(String flavor, String services) {
  final indexHtmlFile = File('web/index.html');
  if (!indexHtmlFile.existsSync()) return;

  final document = html.Document.html(indexHtmlFile.readAsStringSync());
  final metas = document.head?.getElementsByTagName('meta') ?? [];

  for (final meta in metas) {
    if (meta.attributes['name'] == 'google-signin-client_id') {
      late String content;

      if (services == 'xetia') {
        content =
            '251781633074-4ia96djno4kqidkton7jpl1dootq6pmj.apps.googleusercontent.com';
      } else if (services == 'harti') {
        if (flavor == 'staging') {
          content =
              '337813673890-quetrn8t89475logok2pvsgk3da47rud.apps.googleusercontent.com';
        } else {
          content =
              '476570204161-k4tti2vq6qm9rv97440va458u2pspg6s.apps.googleusercontent.com';
        }
      }

      meta.attributes['content'] = content;
    }
  }

  final doc = document.outerHtml;
  indexHtmlFile.writeAsStringSync(doc);
}
