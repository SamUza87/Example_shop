import 'package:disign_shopping/screens/item_screen.dart';
import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  var pNames = [
    "Маасы",
    "Галош",
    "Балдардыкы",
    "Туфли",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFFD4ECF7),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ]),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Center(
                      child: Text(
                        "30% скидка",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Icon(Icons.favorite, color: Colors.redAccent),
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>ItemScreen()));
                    },
                    child: Image.asset(
                      "assets/${pNames[index]}.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                  
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pNames[index],
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        
                        
                        // Row(
                        //   children: const [
                        //     Text(
                        //       "\300 сомдон башталат",
                        //       style: TextStyle(
                        //         fontSize: 9.5,
                        //         color: Colors.redAccent,
                        //         fontWeight: FontWeight.w500,
                        //       ),
                        //     ),
                        //     SizedBox(width: 5),
                        //     // Text(
                        //     //   "3000% off",
                        //     //   style: TextStyle(
                        //     //     decoration: TextDecoration.lineThrough,
                        //     //     fontSize: 11,
                        //     //     color: Colors.black.withOpacity(0.4),
                        //     //   ),
                        //     // ),
                        //   ],
                        // ),
                      ]),
                      
                ),
              ],
              
            ),
            
          ),
          
        );
      },
    );
  }
}
