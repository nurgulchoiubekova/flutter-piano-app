import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpianoapp/main.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({
    required this.text,
    required this.soundPath,
    super.key,
  });

  final String text;
  final String soundPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width * 0.09,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.sp),
        child: ElevatedButton(
          onPressed: () async {
            final source = await soloud.loadAsset('assets/sounds/$soundPath');
            await soloud.play(source);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shadowColor: Colors.black,
            padding: EdgeInsets.zero,
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
                child: Text(text),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
