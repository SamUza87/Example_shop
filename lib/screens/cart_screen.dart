import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  List<String> pNames = [
    "Маасы",
    "Галош",
    "Балдардыкы",
    "Туфли",
  ];

  var pSize = [
    "",
    "",
    "",
    "",
  ];

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Align(
              child: Text(
                "Товарлардын тизмеси",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            for (int i = 0; i < 4; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.only(right: 10),
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 248, 248),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width / 4,
                      margin: EdgeInsets.only(left: 8),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFFD4ECF7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        "assets/${pNames[i]}.png",
                        height: 70,
                        width: 70,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 20, bottom: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pNames[i],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          " ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        Text(
                          pSize[i],
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   crossAxisAlignment: CrossAxisAlignment.end,
                    //   children: [
                    //     // Text(
                    //     //   "\$50.55",
                    //     //   style: TextStyle(
                    //     //       color: Colors.redAccent,
                    //     //       fontSize: 14,
                    //     //       fontWeight: FontWeight.bold),
                    //     // ),
                    //     Container(
                    //       height: 20,
                    //       width: 50,
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(8),
                    //       ),
                    //       // child: Row(
                    //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       //   crossAxisAlignment: CrossAxisAlignment.center,
                    //       //   children: [
                    //       //     Icon(CupertinoIcons.minus),
                    //       //     Text('01'),
                    //       //     Icon(CupertinoIcons.plus),
                    //       //   ],
                    //       // ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Жалпы төлөм:',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  '',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2*2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.redAccent,
              ),
              child: Center(
                child: Text (
                  'Буйрутма бер',
                  style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
