import 'package:flutter/material.dart';

import 'black_button.dart';
import 'white_button.dart';

class PianoKeyboardItem extends StatelessWidget {
  const PianoKeyboardItem({
    required this.index,
    required this.cPath,
    required this.dPath,
    required this.ePath,
    required this.fPath,
    required this.gPath,
    required this.aPath,
    required this.bPath,
    required this.cdPath,
    required this.dePath,
    required this.fgPath,
    required this.gaPath,
    required this.abPath,
    super.key,
  });

  final int index;

  final String cPath;
  final String dPath;
  final String ePath;
  final String fPath;
  final String gPath;
  final String aPath;
  final String bPath;

  final String cdPath;
  final String dePath;
  final String fgPath;
  final String gaPath;
  final String abPath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            WhiteButton(text: 'C$index', soundPath: cPath),
            WhiteButton(text: 'D$index', soundPath: dPath),
            WhiteButton(text: 'E$index', soundPath: ePath),
            WhiteButton(text: 'F$index', soundPath: fPath),
            WhiteButton(text: 'G$index', soundPath: gPath),
            WhiteButton(text: 'A$index', soundPath: aPath),
            WhiteButton(text: 'B$index', soundPath: bPath),
          ],
        ),
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.053),
            BlackButton(text: 'C♯/D♭$index', soundPath: cdPath),
            SizedBox(width: MediaQuery.of(context).size.width * 0.013),
            BlackButton(text: 'D♯/E♭$index', soundPath: dePath),
            SizedBox(width: MediaQuery.of(context).size.width * 0.103),
            BlackButton(text: 'F♯/G♭$index', soundPath: fgPath),
            SizedBox(width: MediaQuery.of(context).size.width * 0.0132),
            BlackButton(text: 'G♯/A♭$index', soundPath: gaPath),
            SizedBox(width: MediaQuery.of(context).size.width * 0.0134),
            BlackButton(text: 'A♯/B♭$index', soundPath: abPath),
          ],
        ),
      ],
    );
  }
}