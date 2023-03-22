import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';
import '../controller/logup_controller.dart';

class LogupView extends StatefulWidget {
  const LogupView({Key? key}) : super(key: key);

  Widget build(context, LogupController controller) {
    controller.view = this;

  }

  @override
  State<LogupView> createState() => LogupController();
}