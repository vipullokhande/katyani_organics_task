import 'package:flutter/material.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width * 0.295,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(224, 53, 71, 1),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    child: Text(
                      "Save \$400",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    "https://kidzstuffonline.co.nz/cdn/shop/files/s-pdpxl.png?v=1700440779&width=1946",
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Positioned(
              bottom: -5,
              right: 0,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(25, 23, 29, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(90, 168, 53, 1),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "ADD",
                  style: TextStyle(color: Color.fromRGBO(90, 168, 53, 1)),
                ),
              ),
            ),
          ],
        ),
        Container(
          color: Color.fromRGBO(47, 46, 54, 1),
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("2-5 years", style: TextStyle(color: Colors.white)),
        ),
        Text(
          "Toyshine\nProjector\nTorch Education",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Row(
          children: [
            Text("⭐⭐⭐⭐⭐", style: TextStyle(fontSize: 11)),
            Text(
              " (119)",
              style: TextStyle(color: Color.fromRGBO(202, 165, 176, 1)),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "🕒",
              style: TextStyle(color: Color.fromRGBO(124, 167, 101, 1)),
            ),
            Text(
              "12 MINS",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
        Text(
          "80% OFF",
          style: TextStyle(color: Color.fromRGBO(105, 134, 215, 1)),
        ),
        Row(
          children: [
            Text("₹119 ", style: TextStyle(color: Colors.white, fontSize: 14)),
            Text(
              "MRP 599",
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                decorationColor: Color.fromRGBO(154, 121, 130, 1),
                color: Color.fromRGBO(154, 121, 130, 1),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
