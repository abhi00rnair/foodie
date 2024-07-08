import 'package:flutter/material.dart';
import 'package:foodie/pages/home.dart';
import 'package:foodie/pages/order.dart';
import 'package:foodie/pages/profile.dart';
import 'package:foodie/pages/wallet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int currentindex = 0;
  late List<Widget> pages;
  late Widget currentpage;
  late home homepage;
  late Profile profile;
  late Wallet wallet;
  late Order order;
  @override
  void initState() {
    homepage = home();
    order = Order();
    wallet = Wallet();
    profile = Profile();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentindex = index;
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.wallet,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.person_2_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.shopping_bag,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ],
      ),
      body: pages[currentindex],
    );
  }
}
