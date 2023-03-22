import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zenstore/state_util.dart';
import '../view/slider_view.dart';

class SliderController extends State<SliderView> implements MvcController {
  static late SliderController instance;
  late SliderView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? photoUrl;
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
}
