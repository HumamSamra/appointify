extension StringExtension on String? {
  int toInt() {
    if (this != null) {
      return int.tryParse(this!) ?? 0;
    }
    return 0;
  }

  double toDouble() {
    if (this != null) {
      return double.tryParse(this!) ?? 0;
    }
    return 0;
  }

  DateTime? toDateTime() {
    if (this != null) {
      return DateTime.tryParse(this!);
    }
    return null;
  }
}
