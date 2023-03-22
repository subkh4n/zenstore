import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';
import '../controller/gift_controller.dart';

class GiftView extends StatefulWidget {
  const GiftView({Key? key}) : super(key: key);

  Widget build(context, GiftController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gift"),
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
  State<GiftView> createState() => GiftController();
}