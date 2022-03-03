import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart total.dart <inputFile:csv>');
    exit(1);
  }

  final inputFile = args.first;
  final isFileExists = File(inputFile).existsSync();

  if (isFileExists) {
    final totalDurationByTag = <String, double>{};

    final lines = File(inputFile).readAsLinesSync();
    lines.removeAt(0);

    var totalDuration = 0.0;

    for (var line in lines) {
      final values = line.split(',');
      final duration = double.parse(values[3].replaceAll('"', ''));
      final tag = values[5].replaceAll('"', '');

      final previousTotalDuration = totalDurationByTag[tag];
      if (previousTotalDuration == null) {
        totalDurationByTag[tag] = duration;
      } else {
        totalDurationByTag[tag] = previousTotalDuration + duration;
      }

      totalDuration += duration;
    }
    for (var entry in totalDurationByTag.entries) {
      final formattedDuration = entry.value.toStringAsFixed(1);
      final tag = entry.key;

      print('${tag.isEmpty ? 'Unknown' : tag} : ${formattedDuration}h');
    }

    print('Total duration is: ${totalDuration.toStringAsFixed(1)}h');
  } else {
    print('There is no such file found.');
    exit(1);
  }
}
