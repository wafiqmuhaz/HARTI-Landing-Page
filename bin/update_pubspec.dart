import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yaml/yaml.dart';

Future<void> main() async {
  final file = File('pubspec.yaml');
  var content = file.readAsStringSync();
  final pubspecYaml = loadYaml(content);

  final YamlMap dependencies = pubspecYaml['dependencies'];
  for (final String packageName in dependencies.keys) {
    final package = dependencies[packageName];
    if (package is YamlMap) {
      final bool isExternalHosted = package.containsKey('hosted');
      if (isExternalHosted) {
        final String version = package['version'];
        final String hosted = package['hosted'];

        final dio = Dio();
        final response = await dio.get(
          '$hosted/packages/$packageName.json',
          options: Options(responseType: ResponseType.json),
        );
        if (response.statusCode == 200) {
          final data = response.data;
          final versions = data['versions'] as List;
          final String latestVersion = versions.last;

          var idx = content.indexOf('$packageName:');
          if (idx >= 0) {
            idx = content.indexOf('version: ', idx) + 'version: '.length;
            final int endIdx = content.indexOf('\n', idx);
            final String oldVersion =
                content.substring(idx, endIdx).replaceAll('^', '');
            if (latestVersion != oldVersion) {
              content = content.replaceRange(idx, endIdx, '^$latestVersion');
            }
          }

          print('$packageName $latestVersion');
        }
      }
    }

    // if (package is String) {
    //   final version = package;

    //   final dio = Dio();
    //   final response = await dio.get(
    //     'https://pub.dev/packages/$packageName.json',
    //     options: Options(responseType: ResponseType.json),
    //   );

    //   if (response.statusCode == 200) {
    //     final data = response.data;
    //     final versions = data['versions'] as List;
    //     final String latestVersion = versions.first;

    //     var idx = content.indexOf('$packageName: ');
    //     if (idx >= 0) {
    //       idx += '$packageName: '.length;
    //       final int endIdx = content.indexOf('\n', idx);
    //       final String oldVersion =
    //           content.substring(idx, endIdx).replaceAll('^', '');
    //       if (latestVersion != oldVersion) {
    //         content = content.replaceRange(idx, endIdx, '^$latestVersion');
    //       }
    //     }
    //   }

    //   print(version);
    // }
  }

  file.writeAsStringSync(content, flush: true);
}
