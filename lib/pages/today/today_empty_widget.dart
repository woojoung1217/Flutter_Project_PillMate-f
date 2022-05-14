import 'package:dory/components/dory_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayEmpty extends StatelessWidget {
  const TodayEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Center(child: Text('복용 중인 약이 없습니다.')),
        const SizedBox(height: smallSpace),
        const Text(
          '약을 추가해보세요!',
          style:
              TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w700),
          // style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: smallSpace),
        const Icon(CupertinoIcons.arrow_down),
        const SizedBox(height: largeSpace),
        const SizedBox(
          height: 120,
        ),
      ],
    );
  }
}
