import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_ui/models/items.dart';
import 'package:food_app_ui/models/navs.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Nav> navs = [
    Nav(icon: FontAwesomeIcons.house),
    Nav(icon: Icons.apps_rounded),
    Nav(icon: Icons.qr_code_scanner_rounded, isCenter: true),
    Nav(icon: FontAwesomeIcons.heart),
    Nav(icon: Icons.person_outline_rounded)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/avatar.jpg"),
            radius: 12,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enjoy your favourite \nfood delicious",
              style: TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.w900,
                fontSize: 20,
                height: 1.3,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 35,
              child: TextField(
                onChanged: (value) {},
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFFbdc6cf),
                  fontFamily: "Nunito",
                ),
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 15.0, bottom: 5.0, top: 5.0),
                  hintText: "Search Food Anythings",
                  suffixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 242, 242, 242),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const _TrendingToday(),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: _Recommend())
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: navs.map((e) {
              return e.isCenter
                  ? Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 255, 82, 192),
                      ),
                      child: Icon(
                        e.icon,
                        size: 14,
                        color: Colors.white,
                      ),
                    )
                  : Icon(
                      e.icon,
                      size: 14,
                      color: Colors.black54,
                    );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _TrendingToday extends StatefulWidget {
  const _TrendingToday({Key? key}) : super(key: key);

  @override
  State<_TrendingToday> createState() => __TrendingTodayState();
}

class __TrendingTodayState extends State<_TrendingToday> {
  List<Item> trendingToday = [
    Item(
      imageName: "sushi_fish.jpg",
      name: "Sushi Fish",
      price: 12,
      rating: 4.5,
    ),
    Item(
      imageName: "burger.jpg",
      name: "Cheese Burger",
      price: 12,
      rating: 4.5,
    ),
    Item(
      imageName: "pizza.jpg",
      name: "Fine Pizza",
      price: 12,
      rating: 4.5,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Trending Today",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Nunito",
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: trendingToday.map((e) {
              return Container(
                height: 120,
                width: 100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(top: 8, right: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/items/" + e.imageName),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xfffe9900),
                          size: 10,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          e.rating.toString(),
                          style: const TextStyle(
                            fontSize: 8.0,
                            color: Colors.white,
                            fontFamily: "Nunito",
                          ),
                        )
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.name,
                                  style: const TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                    fontFamily: "Nunito",
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  e.price.toString(),
                                  style: const TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                    fontFamily: "Nunito",
                                  ),
                                ),
                                Row()
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}

class _Recommend extends StatefulWidget {
  const _Recommend({Key? key}) : super(key: key);

  @override
  State<_Recommend> createState() => __RecommendState();
}

class __RecommendState extends State<_Recommend> {
  List<Item> recommended = [
    Item(
      imageName: "drumstick.jpg",
      name: "Chicken Drumstick And Source",
      price: 12,
      previousPrice: 20,
      seller: "Mamang Ndut",
      rating: 4.5,
    ),
    Item(
      imageName: "fried_chicken.jpg",
      name: "Fried Chicken With Vegetable",
      price: 16,
      previousPrice: 17,
      seller: "Joko Tole",
      rating: 4.5,
    ),
    Item(
      imageName: "sushi_fish.jpg",
      name: "See Food And Sushi Fish",
      price: 16,
      previousPrice: 17,
      seller: "Mamang Ndut",
      rating: 4.5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Recommended for you",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Nunito",
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: recommended.map((e) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/items/" + e.imageName),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    e.name,
                                    style: const TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Nunito",
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "By " + e.seller,
                                    style: const TextStyle(
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Nunito",
                                        color: Colors.black54),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$" + e.price.toString() + ".00",
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Nunito",
                                          color:
                                              Color.fromARGB(255, 255, 82, 192),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "\$" +
                                            e.previousPrice.toString() +
                                            ".00",
                                        style: const TextStyle(
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Nunito",
                                            color: Colors.black54),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 246, 246, 246),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Color(0xfffe9900),
                                        size: 10,
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        e.rating.toString(),
                                        style: const TextStyle(
                                          fontSize: 8.0,
                                          fontFamily: "Nunito",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 82, 192),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
