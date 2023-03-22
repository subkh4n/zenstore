import 'package:flutter/material.dart';
import 'package:zenstore/state_util.dart';
import '../view/sale_view.dart';

class SaleController extends State<SaleView> implements MvcController {
  static late SaleController instance;
  late SaleView view;

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