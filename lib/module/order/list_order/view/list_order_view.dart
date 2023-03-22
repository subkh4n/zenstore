import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';
import '../controller/list_order_controller.dart';

class ListOrderView extends StatefulWidget {
  const ListOrderView({Key? key}) : super(key: key);

  Widget build(context, ListOrderController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListOrder"),
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
  State<ListOrderView> createState() => ListOrderController();
}