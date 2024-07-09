import 'package:flutter/material.dart';
import 'package:foodie/pages/widgets/supprtwidget.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          right: 50,
          left: 20,
          top: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              'lib/images/mushroom-salad.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Asian mushroom salad',
              style: Appwidget.boldText(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'This mushroom salad is packed with nutrients, makes a great main dish meal, and travels well.',
              maxLines: 3,
              style: Appwidget.styel1(),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }

                    setState(() {});
                  },
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  a.toString(),
                  style: Appwidget.boldText(),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
                    child: Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Delivery time',
                  style: Appwidget.styel1(),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.alarm),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '30 min',
                  style: TextStyle(fontWeight: FontWeight.w800),
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Price', style: Appwidget.boldText()),
                      Text(
                        '\$25',
                        style: Appwidget.boldText(),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.black),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Add to cart',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
