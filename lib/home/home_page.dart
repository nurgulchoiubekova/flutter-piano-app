import 'package:flutter/material.dart';
import 'package:fpianoapp/components/small_keyboard.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/piano_keyboard_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ScrollController();
  bool isShot = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 168, 149, 146),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          '* * * Flutter Piano * * *',
          style: GoogleFonts.tangerine(
            fontSize: 50,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Switch.adaptive(
            value: !isShot,
            activeTrackColor: const Color(0xffd8c2be),
            activeColor: const Color.fromARGB(255, 45, 3, 3),
            onChanged: (value) {
              setState(() {
                isShot = !value;
              });
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Flutter Piano',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Expanded(
              child: FlutterLogo(size: 100),
            ),
            const Text(
              'Developed by Nurgul Choiubekova',
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      body: RawScrollbar(
        controller: _controller,
        thumbVisibility: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(
            color: Color.fromARGB(255, 97, 73, 70),
            width: 2,
          ),
        ),
        scrollbarOrientation: ScrollbarOrientation.top,
        thickness: MediaQuery.of(context).size.height * 0.12,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              color: const Color.fromARGB(255, 119, 88, 88),
              child: const Opacity(
                opacity: 0.6,
                child: SmallKeyboard(),
              ),
            ),
            Expanded(
              child: ListView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  PianoKeyboardItem(
                    index: 1,
                    cPath: _getSoundPath('-1_A'),
                    dPath: _getSoundPath('-1_Ab'),
                    ePath: _getSoundPath('-1_B'),
                    fPath: _getSoundPath('0_A'),
                    gPath: _getSoundPath('0_Ab'),
                    aPath: _getSoundPath('0_B'),
                    bPath: _getSoundPath('0_C'),
                    cdPath: _getSoundPath('0_Cb'),
                    dePath: _getSoundPath('0_D'),
                    fgPath: _getSoundPath('0_Db'),
                    gaPath: _getSoundPath('0_E'),
                    abPath: _getSoundPath('0_F'),
                  ),
                  PianoKeyboardItem(
                    index: 2,
                    cPath: _getSoundPath('0_Fb'),
                    dPath: _getSoundPath('0_G'),
                    ePath: _getSoundPath('0_Gb'),
                    fPath: _getSoundPath('1_A'),
                    gPath: _getSoundPath('1_Ab'),
                    aPath: _getSoundPath('1_B'),
                    bPath: _getSoundPath('1_C'),
                    cdPath: _getSoundPath('1_Cb'),
                    dePath: _getSoundPath('1_D'),
                    fgPath: _getSoundPath('1_Db'),
                    gaPath: _getSoundPath('1_E'),
                    abPath: _getSoundPath('1_F'),
                  ),
                  PianoKeyboardItem(
                    index: 3,
                    cPath: _getSoundPath('1_Fb'),
                    dPath: _getSoundPath('1_G'),
                    ePath: _getSoundPath('1_Gb'),
                    fPath: _getSoundPath('2_A'),
                    gPath: _getSoundPath('2_Ab'),
                    aPath: _getSoundPath('2_B'),
                    bPath: _getSoundPath('2_C'),
                    cdPath: _getSoundPath('2_Cb'),
                    dePath: _getSoundPath('2_D'),
                    fgPath: _getSoundPath('2_Db'),
                    gaPath: _getSoundPath('2_E'),
                    abPath: _getSoundPath('2_F'),
                  ),
                  PianoKeyboardItem(
                    index: 4,
                    cPath: _getSoundPath('2_Fb'),
                    dPath: _getSoundPath('2_G'),
                    ePath: _getSoundPath('2_Gb'),
                    fPath: _getSoundPath('3_A'),
                    gPath: _getSoundPath('3_Ab'),
                    aPath: _getSoundPath('3_B'),
                    bPath: _getSoundPath('3_C'),
                    cdPath: _getSoundPath('3_Cb'),
                    dePath: _getSoundPath('3_D'),
                    fgPath: _getSoundPath('3_Db'),
                    gaPath: _getSoundPath('3_E'),
                    abPath: _getSoundPath('3_F'),
                  ),
                  PianoKeyboardItem(
                    index: 5,
                    cPath: _getSoundPath('3_Fb'),
                    dPath: _getSoundPath('3_G'),
                    ePath: _getSoundPath('3_Gb'),
                    fPath: _getSoundPath('4_A'),
                    gPath: _getSoundPath('4_Ab'),
                    aPath: _getSoundPath('4_B'),
                    bPath: _getSoundPath('4_C'),
                    cdPath: _getSoundPath('4_Cb'),
                    dePath: _getSoundPath('4_D'),
                    fgPath: _getSoundPath('4_Db'),
                    gaPath: _getSoundPath('4_E'),
                    abPath: _getSoundPath('4_F'),
                  ),
                  PianoKeyboardItem(
                    index: 6,
                    cPath: _getSoundPath('4_Fb'),
                    dPath: _getSoundPath('4_G'),
                    ePath: _getSoundPath('4_Gb'),
                    fPath: _getSoundPath('5_A'),
                    gPath: _getSoundPath('5_Ab'),
                    aPath: _getSoundPath('5_B'),
                    bPath: _getSoundPath('5_C'),
                    cdPath: _getSoundPath('5_Cb'),
                    dePath: _getSoundPath('5_D'),
                    fgPath: _getSoundPath('5_Db'),
                    gaPath: _getSoundPath('5_E'),
                    abPath: _getSoundPath('5_F'),
                  ),
                  PianoKeyboardItem(
                    index: 7,
                    cPath: _getSoundPath('5_Fb'),
                    dPath: _getSoundPath('5_G'),
                    ePath: _getSoundPath('5_Gb'),
                    fPath: _getSoundPath('6_A'),
                    gPath: _getSoundPath('6_Ab'),
                    aPath: _getSoundPath('6_B'),
                    bPath: _getSoundPath('6_C'),
                    cdPath: _getSoundPath('6_Cb'),
                    dePath: _getSoundPath('6_D'),
                    fgPath: _getSoundPath('6_Db'),
                    gaPath: _getSoundPath('6_E'),
                    abPath: _getSoundPath('6_F'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getSoundPath(String item) {
    if (isShot) {
      return 'shot/$item.mp3';
    } else {
      return 'sustain/$item.mp3';
    }
  }
}
