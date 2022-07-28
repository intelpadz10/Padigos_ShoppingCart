import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 20,
                  height: 20,
                  child: const Icon(
                    Icons.shopping_cart,
                  )),
              const Text(
                'Shopping Cart',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 100),
          child: Divider(
              indent: 20,
              endIndent: 20,
              thickness: 5,
              color: Color.fromARGB(255, 116, 113, 113)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              Text(
                'Hello',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Text(
                "Total",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              GestureDetector(
                  child: Container(
                    width: 60,
                    height: 60,
                    child: const Icon(Icons.add),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xFF716f72), width: 1)),
                  ),
                  onTap: () {}),
              const Spacer(),
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Next Page",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      const Spacer(),
                      const Icon(Icons.skip_next, color: Colors.white)
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
