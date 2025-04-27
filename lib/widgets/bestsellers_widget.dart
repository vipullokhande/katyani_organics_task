import 'package:flutter/material.dart';

class BestsellersWidget extends StatelessWidget {
  const BestsellersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color.fromRGBO(47, 47, 55, 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(74, 74, 84, 1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Image.network(
                          "https://www.pngmart.com/files/16/Fresh-Onion-Transparent-PNG.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(74, 74, 84, 1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Image.network(
                          "https://www.pngarts.com/files/4/Watermelon-Download-Transparent-PNG-Image.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(74, 74, 84, 1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Image.network(
                          "https://www.pngmart.com/files/16/Fresh-Onion-Transparent-PNG.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(74, 74, 84, 1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Image.network(
                          "https://www.pngarts.com/files/4/Watermelon-Download-Transparent-PNG-Image.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(47, 47, 55, 1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(66, 66, 74, 1),
                    ),
                  ),
                  child: Text(
                    "+113 more",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          Text(
            "Vegetables &\nFruits",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
