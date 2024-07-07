import 'package:flutter/material.dart';
//import 'package:';
import 'package:flutter/widgets.dart';
import 'package:foodie/pages/widgets/supprtwidget.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _HomeState();
}

class _HomeState extends State<home> {
  bool biriyani = false, pizza = false, burger = false, salad = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello abhay,',
                  style: Appwidget.boldText(),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            /*const SizedBox(
              height: 0.2,
            ),*/
            const Text(
              'Discover your taste here',
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(55, 117, 10, 153),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            showitem(),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'lib/images/mushroom-salad.jpg',
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text('mushroom salad', style: Appwidget.boldText()),
                            Text(
                              'salty flavoured',
                              style: Appwidget.styel1(),
                            ),
                            Text(
                              '\$25',
                              style: Appwidget.styel1(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'lib/images/salad1.jpg',
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text('mixed salad', style: Appwidget.boldText()),
                            Text(
                              'tasty and healthy',
                              style: Appwidget.styel1(),
                            ),
                            Text(
                              '\$20',
                              style: Appwidget.styel1(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.only(right: 5),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'lib/images/salad1.jpg',
                        height: 130,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'chicken salad',
                              style: Appwidget.boldText(),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'sweet flavoured chicken',
                              style: Appwidget.styel1(),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              '\$30',
                              style: Appwidget.styel1(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showitem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            pizza = true;
            burger = false;
            salad = false;
            biriyani = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: pizza ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'lib/images/pizza1.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pizza = false;
            burger = false;
            salad = false;
            biriyani = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration:
                  BoxDecoration(color: biriyani ? Colors.black : Colors.white),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'lib/images/biriyani1.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pizza = false;
            burger = false;
            salad = true;
            biriyani = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration:
                  BoxDecoration(color: salad ? Colors.black : Colors.white),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'lib/images/salad1.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pizza = false;
            burger = true;
            salad = false;
            biriyani = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration:
                  BoxDecoration(color: burger ? Colors.black : Colors.white),
              padding: EdgeInsets.all(8),
              child: Image.asset('lib/images/burger.jpg',
                  width: 50, height: 50, fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
