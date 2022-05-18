class MedicineAlarm {
  MedicineAlarm(this.id, this.name, this.imagePath, this.alarmTime, this.key);
  final int id;
  final String name;
  final String? imagePath;
  final String alarmTime;
  final int key;
}

class afterMedicine {
  afterMedicine(this.afterPill);
  final String afterPill;
}
