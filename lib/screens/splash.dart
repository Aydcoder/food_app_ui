import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash-bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(173, 0, 0, 0), Colors.black],
              begin: FractionalOffset(0.5, 0.0),
              end: FractionalOffset(0.0, 1.0),
              stops: [0.7, 1.9],
            ),
          ),
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Let's Order \nYour Best Menu \nIn Here",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              height: 1.3),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Let's Order your menu here and \nfind your best menu here",
                          style: TextStyle(
                              color: Colors.white70,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 1.3),
                        ),
                      ],
                    ),
                  ),
                  Column(children: [
                    ElevatedButton(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.email_rounded,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Sign in with email")
                          ]),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 255, 82, 192),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 18),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(fontFamily: "Nunito"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            child: Center(
                              child: Image.asset(
                                "assets/images/icons/facebook.png",
                                width: 20,
                              ),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent,
                              ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 18),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(
                                    color: Colors.white38,
                                    width: 1,
                                  ),
                                ),
                              ),
                              textStyle: MaterialStateProperty.all(
                                const TextStyle(fontFamily: "Nunito"),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            child: Center(
                              child: Image.asset(
                                "assets/images/icons/google.png",
                                width: 20,
                              ),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent,
                              ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 18),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(
                                    color: Colors.white38,
                                    width: 1,
                                  ),
                                ),
                              ),
                              textStyle: MaterialStateProperty.all(
                                const TextStyle(fontFamily: "Nunito"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
