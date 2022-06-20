import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app_ui/models/items.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfeff),
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
            const _TrendingToday()
          ],
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
  List<Item> _trendingToday = [
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
            children: _trendingToday.map((e) {
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
