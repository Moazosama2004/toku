import 'package:flutter/material.dart';

import '../models/number_model.dart';
import '../shared/components/number_items.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);

  final List<ItemModel> color = const [
    ItemModel(img: 'assets/images/colors/color_black.png', jap: 'father', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/colors/color_brown.png', jap: 'daughter', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/colors/color_dusty_yellow.png', jap: 'GrandFather', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/colors/color_red.png', jap: 'mother', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/colors/color_green.png', jap: 'Grandmother', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/colors/yellow.png', jap: 'olderBrother', eng: 'olderBrother', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/colors/color_white.png', jap: 'mother', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/colors/color_gray.png', jap: 'Grandmother', eng: 'father', sound: '/sounds/family_members/father.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff48312b),
        title: Text(
          'Colors',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context , index) => NumberComponents(num: color[index], color: Color(0xff7d3fa2),),
        itemCount: color.length,
      ),
    );
  }
}
