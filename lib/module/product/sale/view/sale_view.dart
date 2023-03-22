import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';
import '../controller/sale_controller.dart';

class SaleView extends StatefulWidget {
  const SaleView({Key? key}) : super(key: key);

  Widget build(context, SaleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale"),
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
  State<SaleView> createState() => SaleController();
}