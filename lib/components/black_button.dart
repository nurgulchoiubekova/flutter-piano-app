import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpianoapp/main.dart';

class BlackButton extends StatelessWidget {
  const BlackButton({
    required this.text,
    required this.soundPath,
    super.key,
  });

  final String text;
  final String soundPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height * 0.65) * 0.65,
      width: (MediaQuery.of(context).size.width * 0.09) * 0.85,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.sp),
        child: ElevatedButton(
          onPressed: () async {
            final source = await soloud.loadAsset('assets/sounds/$soundPath');
            await soloud.play(source);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 45, 3, 3),
            foregroundColor: Colors.white,
            padding: EdgeInsets.zero,
            textStyle: const TextStyle(fontSize: 12),
            elevation: 5,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Text(text, maxLines: 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
