import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallKeyboard extends StatelessWidget {
  const SmallKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SmallKeyboardItem(),
        SmallKeyboardItem(),
        SmallKeyboardItem(),
        SmallKeyboardItem(),
        SmallKeyboardItem(),
        SmallKeyboardItem(),
        SmallKeyboardItem(),
      ],
    );
  }
}

class SmallKeyboardItem extends StatelessWidget {
  const SmallKeyboardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Row(
          children: [
            SmallWhiteButton(),
            SmallWhiteButton(),
            SmallWhiteButton(),
            SmallWhiteButton(),
            SmallWhiteButton(),
            SmallWhiteButton(),
            SmallWhiteButton(),
          ],
        ),
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.009999),
            const SmallBlackButton(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.001999),
            const SmallBlackButton(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.020),
            const SmallBlackButton(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.001999),
            const SmallBlackButton(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.001999),
            const SmallBlackButton(),
          ],
        ),
      ],
    );
  }
}

class SmallWhiteButton extends StatelessWidget {
  const SmallWhiteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 49) - 0.8.sp,
      height: MediaQuery.of(context).size.height * 0.1,
      margin: EdgeInsets.symmetric(horizontal: 0.4.sp),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
      ),
    );
  }
}

class SmallBlackButton extends StatelessWidget {
  const SmallBlackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ((MediaQuery.of(context).size.width / 49) - 0.8.sp) * 0.95,
      height: (MediaQuery.of(context).size.height * 0.1) * 0.65,
      margin: EdgeInsets.symmetric(horizontal: 0.4.sp),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 45, 3, 3),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
      ),
    );
  }
}
