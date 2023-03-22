import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';

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
                      height: 318.0,
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
                            padding: const EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                ClipOval(
                                  child: Container(
                                    height: 335,
                                    color: const Color(0xffF6F8FF),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Image.asset(
                                    imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
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
                  const Text(
                    "Fancy Fashion",
                    style: TextStyle(
                      fontSize: 50.0,
                    ),
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
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Shirt",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "T-Shirt",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "Hoodies",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "136+ Categories",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 94.0,
                        ),
                        Container(
                          height: 100,
                          width: 2,
                          decoration: const BoxDecoration(
                            color: Color(0xffF3D6D2),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const LoginView()));
                          },
                          child: Center(
                            child: Container(
                              width: 140,
                              height: 50,
                              decoration: const BoxDecoration(
                                color: Color(0xff4b46b8),
                                borderRadius: BorderRadiusDirectional.only(
                                  topEnd: Radius.circular(12),
                                  bottomEnd: Radius.circular(12),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Next",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 4.0),
                                  Icon(
                                    Icons.navigate_next_sharp,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
