import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';
import '../controller/dasboard_controller.dart';

class DasboardView extends StatefulWidget {
  const DasboardView({Key? key}) : super(key: key);

  Widget build(context, DasboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dasboard"),
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
  State<DasboardView> createState() => DasboardController();
}