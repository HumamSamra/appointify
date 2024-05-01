import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  String formatTo(String format) {
    if (this != null) {
      return DateFormat(format).format(this!);
    }
    return '';
  }

  bool isBetween(DateTime a, DateTime b) {
    if (a.isBefore(b)) {
      return this!.isAfter(a) && this!.isBefore(b);
    } else {
      return this!.isAfter(b) && this!.isBefore(a);
    }
  }
}
