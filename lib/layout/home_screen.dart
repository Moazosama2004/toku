import 'package:flutter/material.dart';
import 'package:toku/modules/colors_screen.dart';
import 'package:toku/modules/family_members_screen.dart';
import 'package:toku/modules/pharses_screen.dart';

import '../modules/number_screen.dart';
import '../shared/components/category_item.dart';


class TokuHome extends StatelessWidget {
  const TokuHome({Key? key}) : super(key: key);

  // appbar 48312b
  // fb9531
  // 548033
  // 7d3fa2
  // 48a6cc
  // sca fff3d9
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff3d9),
      appBar: AppBar(
        backgroundColor: Color(0xff48312b),
        title: Text(
          'Toku',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children:
        [
          Category(
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => NumberScreen()));
            },
            title: "Numbers",
            bgColor: Color(0xfffb9531),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FamilyMembersScreen()));
            },
            title: "Family Members",
            bgColor: Color(0xff548033),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorsScreen()));
            },
            title: "Colors",
            bgColor: Color(0xff7d3fa2),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PharsesScreen()));
            },
            title: "Pharses",
            bgColor: Color(0xff48a6cc),
          ),
        ],
      ),
    );
  }
}
