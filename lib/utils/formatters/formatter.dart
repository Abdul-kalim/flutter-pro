import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$')
        .format(amount); //customize the currency locale and symbol as needed
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    // add more custom phone Number formatting logic for different formats if needed.
    return phoneNumber;
  }

//   not fully tested
//   static String internationalFormatPhoneNumber(String phoneNumber) {
//     // remove any non-digit characters from the phone number
//     var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');
//
//     //   extract the country code frm the digitsonly
//     String countryCode = '+${digitsOnly.substring(0, 2)}';
//     digitsOnly = digitsOnly.substring(2);
//
//     //   add the remaining digits with proper fromatting
//     final formattedNumber = StringBuffer();
//     formattedNumber.write('($countryCode)');
//
//     int i = 0;
//     while (i < digitsOnly.length) {
//       int groupLength = 2;
//       if (i == 0 && countryCode == '+1') {
//         groupLength = 3;
//       }
//
//       int end = i + groupLength;
//       formattedNumber.write(digitsOnly.substring(1, end));
//       if (end < digitsOnly.length) {
//         formattedNumber.write(' ');
//       }
//       i = end;
//     }
//   }
}
