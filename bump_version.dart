// ignore_for_file: avoid_print

import 'dart:io';

void main() {
  bumpVersion();
}

void bumpVersion() {
  // Read the current version from pubspec.yaml
  var pubspecFile = File('pubspec.yaml');
  var lines = pubspecFile.readAsLinesSync();
  var versionLineIndex =
      lines.indexWhere((line) => line.trim().startsWith('version:'));
  var currentVersion = lines[versionLineIndex].split(': ')[1].trim();

  // Extract the major, minor, and patch version numbers
  var versionParts =
      currentVersion.split('+'); // Split by '+' to separate build number
  var versionNumbers =
      versionParts[0].split('.'); // Split by '.' to get major, minor, patch
  var major = int.parse(versionNumbers[0]);
  var minor = int.parse(versionNumbers[1]);
  var patch = int.parse(versionNumbers[2]);

  // Increment the minor version
  minor++;

  // Construct the new version string
  var newVersion =
      '$major.$minor.$patch+${versionParts[1]}'; // Reconstruct version with original build number

  // Update the version in pubspec.yaml
  lines[versionLineIndex] = 'version: $newVersion';
  pubspecFile.writeAsStringSync(lines.join('\n'));

  // Commit the changes
  Process.runSync('git', ['add', 'pubspec.yaml']);
  // Process.runSync('git', ['commit', '-m', 'Version bumped to $newVersion']);

  // print('Bumped version from $currentVersion to $newVersion');
}
