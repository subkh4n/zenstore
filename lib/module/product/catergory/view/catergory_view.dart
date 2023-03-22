import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';
import '../controller/catergory_controller.dart';

class CatergoryView extends StatefulWidget {
  const CatergoryView({Key? key}) : super(key: key);

  Widget build(context, CatergoryController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catergory"),
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
  State<CatergoryView> createState() => CatergoryController();
}