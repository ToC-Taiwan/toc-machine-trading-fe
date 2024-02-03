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

  // edit build number, eg. version: 4.2.25+40075 -> version: 4.2.25+40076
  final buildNumber = int.parse(version.split('+')[1]) + 1;
  final newVersion = '${version.split('+')[0]}+$buildNumber';
  final newLines = lines.map((line) {
    if (line.trim().startsWith('version:')) {
      return 'version: $newVersion';
    }
    return line;
  }).toList();
  pubspecFile.writeAsStringSync(newLines.join('\n'));
}
