import 'package:flutter/material.dart';
import 'package:zenstore/state_util.dart';
import '../view/list_order_view.dart';

class ListOrderController extends State<ListOrderView> implements MvcController {
  static late ListOrderController instance;
  late ListOrderView view;

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