import 'package:flutter/material.dart';

class FeaturedWidget extends StatelessWidget {
  const FeaturedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(width: 2, color: Color.fromRGBO(82, 139, 239, 1)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Featured",
              style: TextStyle(
                color: Color.fromRGBO(200, 53, 68, 1),
                fontSize: 10,
              ),
            ),
          ),
          Image.network(
            "https://pnghq.com/wp-content/uploads/iced-coffee-png-transparent-png-download-16152-1536x1536.png",
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
