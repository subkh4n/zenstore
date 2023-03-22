import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';
import '../controller/slider_controller.dart';

class SliderView extends StatefulWidget {
  const SliderView({Key? key}) : super(key: key);

  Widget build(context, SliderController controller) {
    controller.view = this;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(builder: (context) {
              List images = [
                "assets/images/1.png",
                "assets/images/2.png",
                "assets/images/3.png",
              ];

              return Column(
                children: [
                  CarouselSlider(
                    carouselController: controller.carouselController,
                    options: CarouselOptions(
                      height: 300.0,
                      autoPlay: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        controller.currentIndex = index;
                        controller.setState(() {});
                      },
                    ),
                    items: images.map((imageUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          // return Container(
                          //
                          //   margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          //   decoration: BoxDecoration(
                          //     color: Colors.transparent,
                          //     shape: BoxShape.circle,
                          //     border: Border.all(
                          //       color: Colors.black,
                          //       width: 2,
                          //       style: BorderStyle.solid,
                          //     ),
                          //   ),
                          // );
                          return DottedBorder(
                            borderType: BorderType.Circle,
                            strokeWidth: 2,
                            dashPattern: const [10, 15],
                            color: Colors.grey,
                            padding: const EdgeInsets.all(20),
                            child: ClipOval(
                              child: Container(
                                height: 350,
                                color: Colors.red,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                    // End of SliderView items
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: images.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => controller.carouselController
                            .animateToPage(entry.key),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      controller.currentIndex == entry.key
                                          ? 0.9
                                          : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  State<SliderView> createState() => SliderController();
}
