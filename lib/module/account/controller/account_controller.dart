import 'package:flutter/material.dart';
import 'package:zenstore/state_util.dart';
import '../view/account_view.dart';

class AccountController extends State<AccountView> implements MvcController {
  static late AccountController instance;
  late AccountView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}