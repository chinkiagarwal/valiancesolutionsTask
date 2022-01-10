

import 'package:flutter_assignment/common/strings.dart';
import 'package:flutter_assignment/common/utility.dart';


class Logger {
  static Future<void> logError(Exception ex) async {
    Utility.showToast(Strings.errorMessage);
   // await Bugsee.logException(ex);
  }
}