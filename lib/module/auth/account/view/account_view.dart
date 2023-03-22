import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';
import '../controller/account_controller.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  Widget build(context, AccountController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
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
  State<AccountView> createState() => AccountController();
}