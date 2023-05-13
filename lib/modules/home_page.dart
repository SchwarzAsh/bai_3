import 'package:bai_3/modules/cart_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const CartPage(),
              ),
            );
          },
          child: const Icon(Icons.filter_alt_sharp),
        ),
        title: const Center(child: Text('Keells')),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.notification_add_rounded),
          SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('All Categories'),
                  Text('View All'),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(5, (index) {
                        return Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: const [
                              CircleAvatar(radius: 40),
                              Text('Text'),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Nexus member deals'),
                  Text('View All'),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(5, (index) {
                        return Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                color: Colors.grey,
                              ),
                              Column(
                                children: const [
                                  Text('Ginger'),
                                  Text('380'),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Keels deals'),
                  Text('View All'),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(5, (index) {
                        return Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                color: Colors.grey,
                              ),
                              Column(
                                children: const [
                                  Text('Ginger'),
                                  Text('380'),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black), label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(Icons.badge, color: Colors.black), label: 'My Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.badge, color: Colors.black), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black), label: 'More'),
        ],
      ),
    );
  }
}
