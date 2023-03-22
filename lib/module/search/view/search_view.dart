import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';
import '../controller/search_controller.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  Widget build(context, SearchController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
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
  State<SearchView> createState() => SearchController();
}