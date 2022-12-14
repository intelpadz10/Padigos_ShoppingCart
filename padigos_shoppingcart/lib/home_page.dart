import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:padigos_shoppingcart/data_class.dart';
import 'package:padigos_shoppingcart/second_page.dart';
import 'package:provider/provider.dart';

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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 50, right: 90),
                  width: 20,
                  height: 20,
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.orange,
                  )),
              const Text(
                'Shopee',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
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
              color: Color.fromARGB(255, 174, 172, 172)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Consumer<DataClass>(builder: (context, data, child) {
                  return Text(
                    '${data.x}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.orange,
                    ),
                  );
                }),
                const Text(
                  "-- Total",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
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
                    child: const Icon(
                      Icons.add,
                      color: Colors.orange,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.orange, width: 1)),
                  ),
                  onTap: () {
                    if (context.read<DataClass>().x >= 5) {
                      Get.snackbar("Item", "Can not more than this",
                          backgroundColor: Colors.orange,
                          colorText: Colors.white,
                          titleText: const Text(
                            "Item",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          messageText: const Text(
                            "Can not be more than this",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ));
                    } else {
                      context.read<DataClass>().incrementX();
                    }
                  }),
              const Spacer(),
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.to(() => const SecondPage(),
                                transition: Transition.upToDown,
                                duration: const Duration(seconds: 1));
                          },
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
