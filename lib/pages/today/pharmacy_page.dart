import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

import '../../components/dory_constants.dart';
import '../../main.dart';
import '../../models/medicine.dart';
import '../../models/medicine_alarm.dart';
import '../../models/medicine_history.dart';
import 'today_empty_widget.dart';
import 'today_take_tile.dart';

class PharmacyPage extends StatelessWidget {
  const PharmacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          '근처 약국 의약품 재고 현황 ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        Divider(
          height: 50,
          thickness: 1,
        )
      ],
    );
  }
}
