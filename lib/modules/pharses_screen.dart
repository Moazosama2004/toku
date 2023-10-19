import 'package:flutter/material.dart';
import 'package:toku/shared/components/number_items.dart';

import '../models/number_model.dart';

class PharsesScreen extends StatelessWidget {
  const PharsesScreen({Key? key}) : super(key: key);
  final List<ItemModel> number =  const [
    ItemModel(jap: 'ichi', eng: 'one' , sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(jap: 'Ni', eng: 'two' , sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(jap: 'San', eng: 'three' , sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(jap: 'Shi', eng: 'four' , sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(jap: 'Go', eng: 'five' , sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(jap: 'Roku', eng: 'six' , sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(jap: 'Sebun', eng: 'seven' , sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(jap: 'Hachi', eng: 'eight' , sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(jap: 'Kyu', eng: 'nine' , sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(jap: 'Ju', eng: 'ten' , sound: 'sounds/numbers/number_ten_sound.mp3'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff48312b),
        title: Text(
          'Family Members',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context , index) => PhrasesItem(item: number[index], color: Color(0xff48a6cc),),
        itemCount: number.length,
      ),
    );
  }
}
