import 'package:flutter/material.dart';

class OfferWidget extends StatelessWidget {
  final String image;
  final String off;
  final String title;
  const OfferWidget({
    super.key,
    required this.image,
    required this.off,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 246, 201, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(165, 118, 2, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "UP TO $off% OFF",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
          SizedBox(height: 5),
          Text(title, textAlign: TextAlign.center),
          SizedBox(height: 5),
          Image.network(image, height: 70, width: 70),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
