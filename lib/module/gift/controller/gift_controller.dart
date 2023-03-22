import 'package:flutter/material.dart';
import 'package:zenstore/state_util.dart';
import '../view/gift_view.dart';

class GiftController extends State<GiftView> implements MvcController {
  static late GiftController instance;
  late GiftView view;

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