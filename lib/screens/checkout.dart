import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_ui/models/items.dart';
import 'package:food_app_ui/models/navs.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  List<Nav> navs = [
    Nav(icon: FontAwesomeIcons.house),
    Nav(icon: Icons.apps_rounded),
    Nav(icon: Icons.qr_code_scanner_rounded, isCenter: true),
    Nav(icon: FontAwesomeIcons.heart),
    Nav(icon: Icons.person_outline_rounded)
  ];
  List<Item> carts = [
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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Checkout",
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: carts.map((e) {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              color: Color.fromARGB(
                                                  255, 255, 82, 192),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                        color:
                                            Color.fromARGB(255, 255, 82, 192),
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
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      height: 1.3,
                    ),
                  ),
                  Text(
                    "23,000",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w900,
                      fontSize: 17,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Proceed to payment"),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    ),
                  ]),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 255, 82, 192),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                      fontFamily: "Nunito", fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
