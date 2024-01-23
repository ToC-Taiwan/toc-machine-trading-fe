import 'dart:io';

void main() {
  final pubspecFile = File('pubspec.yaml');
  final lines = pubspecFile.readAsLinesSync();

  String version = "";
  for (final line in lines) {
    if (line.trim().startsWith('version:')) {
      version = line.split(':')[1].trim();
      break;
    }
  }

  if (version.isNotEmpty) {
    final dartFileContent = "const String appVersion = '$version';";

    final dartFile = File('lib/version.dart');
    dartFile.writeAsStringSync(dartFileContent);
  } else {
    throw 'Version not found in pubspec.yaml';
  }
}
