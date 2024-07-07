import 'package:flutter/material.dart';
import 'package:foodie/pages/home.dart';
import 'package:foodie/pages/order.dart';
import 'package:foodie/pages/profile.dart';
import 'package:foodie/pages/wallet.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
    return Scaffold(bottomNavigationBar: curved);
  }
}
