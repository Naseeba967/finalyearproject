import 'package:intl/intl.dart';

class Formatters {
  static String formateDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }
  
}
