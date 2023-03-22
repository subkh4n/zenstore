import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';
import '../controller/confirmation_controller.dart';

class ConfirmationView extends StatefulWidget {
  const ConfirmationView({Key? key}) : super(key: key);

  Widget build(context, ConfirmationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirmation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ConfirmationView> createState() => ConfirmationController();
}