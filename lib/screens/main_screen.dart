import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_card_component/components/item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Transform.translate(
          offset: Offset(-width / 2, -height / 2),
          child: SvgPicture.asset("assets/images/Top.svg"),
        ),
        Transform.translate(
          offset: Offset(width / 2, height / 2),
          child: SvgPicture.asset("assets/images/Bottom.svg"),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 3,
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 0))
                    ],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SvgPicture.asset(
                        "assets/images/Card.svg",
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 50),
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Victor Crest",
                            style: TextStyle(
                              color: Color.fromRGBO(37, 37, 48, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "26",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(111, 111, 114, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "London",
                        style: TextStyle(
                          color: Color.fromRGBO(99, 101, 105, 1),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        thickness: 1,
                        color: Color.fromRGBO(229, 229, 229, 1),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Item(title: "80K", caption: "Followers"),
                          Item(title: "803K", caption: "Likes"),
                          Item(title: "1.4K", caption: "Photos"),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -35),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/images/Victor.jpg",
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
