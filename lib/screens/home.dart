import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
