import 'package:flutter/material.dart';
import 'package:padigos_shoppingcart/data_class.dart';
import 'package:padigos_shoppingcart/home_page.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 40, right: 90),
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
              Flexible(
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
              const SizedBox(
                height: 100,
              ),
              Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (Provider.of<DataClass>(context, listen: false).x <=
                            0) {
                          Get.snackbar("Item", "Can not decrease more",
                              backgroundColor: Colors.orange,
                              colorText: Colors.white,
                              titleText: const Text(
                                "Item",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ),
                              messageText: const Text(
                                "Can not reduce more",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ));
                        } else {
                          Provider.of<DataClass>(context, listen: false)
                              .decrementX();
                        }
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        child: const Icon(
                          Icons.remove,
                          color: Colors.orange,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Colors.orange,
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        height: 60,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => const HomePage(),
                                transition: Transition.downToUp,
                                duration: const Duration(seconds: 1));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.skip_previous,
                                  color: Color(0xFFfefeff)),
                              Text(
                                "Prev Page",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFFfefeff)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
