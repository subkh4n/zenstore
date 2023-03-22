import 'package:flutter/material.dart';
import 'package:zenstore/state_util.dart';
import '../view/confirmation_view.dart';

class ConfirmationController extends State<ConfirmationView> implements MvcController {
  static late ConfirmationController instance;
  late ConfirmationView view;

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