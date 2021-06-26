import 'package:flutter/material.dart';

import 'package:task_flutter/Alerts& diDialogs/alert_dialogs.dart';
class Dialog_Helper {

  static alert(context) => showDialog(context: context, builder: (context) => alert_dialogs());
}