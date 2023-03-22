import 'package:flutter/material.dart';
import 'package:zenstore/state_util.dart';
import '../view/catergory_view.dart';

class CatergoryController extends State<CatergoryView> implements MvcController {
  static late CatergoryController instance;
  late CatergoryView view;

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