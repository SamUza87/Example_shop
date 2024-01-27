import 'package:disign_shopping/widgets/grid_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> Clrs = [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 63, 208, 143),
    ];
    var imageList = [
      "assets/slide1.png",
      "assets/slide3.png",
      // "assets/slide4.png",
    ];

    var iconImageList = [
      "assets/icon1.png",
      "assets/icon2.png",
      "assets/icon3.png",
      "assets/icon4.png",
      "assets/icon5.png",
      "assets/icon6.png",
      "assets/icon7.png",
    ];

    int i;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // Container(
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       color: Color(0xFFD4ECF7),
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: const [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 4,
                //           spreadRadius: 2,
                //         )
                //       ]),
                //   // child: Icon(CupertinoIcons.cart, size: 28),
                // ),
                // Container(
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       color: Color(0xFFD4ECF7),
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: const [
                //         BoxShadow(
                //           color: Colors.black26,
                //           blurRadius: 4,
                //           spreadRadius: 2,
                //         )
                //       ]),
                //   // child: Icon(CupertinoIcons.search, size: 28),
                // )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Маасы, Галош",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Сатып алмак сизден, кызмат бизден! ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                    ),
                  ),
                ]),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                for (i = 0; i < 2; i++)
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 4.2,
                    decoration: BoxDecoration(
                      color: Clrs[i],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Товарды жеткирип берүү кызматы бар",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              // Container(
                              //   width: 70,
                              //   padding: EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //     color: Colors.white,
                              //     borderRadius: BorderRadius.circular(20),
                              //   ),
                              //   child: Center(
                              //     child: Text(
                              //       "Танда",
                              //       style: TextStyle(
                              //         color: Colors.redAccent, fontSize: 12 ,
                              //         fontWeight: FontWeight.bold,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Image.asset(
                          imageList[i],
                          height: 200,
                          width: 110,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Категориялар",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  // Text(
                  //   "See All",
                  //   style: TextStyle(
                  //     color: Colors.black54,
                  //   ),
                  // ),
                ]),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(children: [
                for (var i = 0; i < 7; i++)
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFFD4ECF7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Image.asset(iconImageList[i]),
                    ),
                  ),
              ]),
            ),
          ),
          SizedBox(height: 10),
          GridItems(),
        ],
      ),
    );
  }
}
