import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  Category({this.title, this.bgColor , this.onTap});

  String? title;
  Color? bgColor;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsDirectional.only(start: 16),
        alignment: AlignmentDirectional.centerStart,
        height: 80,
        width: double.infinity,
        color: bgColor,
        child: Text(
          '$title',
          style: TextStyle(
              color: Colors.white,
              fontSize: 24
          ),
        ),
      ),
    );
  }


}