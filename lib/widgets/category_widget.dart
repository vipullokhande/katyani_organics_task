import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final String title;
  final IconData icon;
  bool isSelected;
  CategoryWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
  });

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Icon(widget.icon, color: Colors.white),
        ),
        Text(widget.title, style: TextStyle(color: Colors.white)),
        SizedBox(height: 5),
        widget.isSelected
            ? Container(width: 80, height: 2, color: Colors.white)
            : SizedBox(),
      ],
    );
  }
}
