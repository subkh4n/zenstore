import 'package:flutter/material.dart';
import 'package:zenstore/state_util.dart';
import '../view/dasboard_view.dart';

class DasboardController extends State<DasboardView> implements MvcController {
  static late DasboardController instance;
  late DasboardView view;

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