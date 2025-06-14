import 'package:intl/intl.dart';

extension DateParsing on String {
  String toParsedDate({String format = 'dd MMM yyyy, HH:mm'}) {
    try {
      final date = DateTime.parse(this).toLocal();
      return DateFormat(format).format(date);
    } catch (e) {
      return this;
    }
  }
}
