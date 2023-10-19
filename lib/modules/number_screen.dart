import 'package:flutter/material.dart';
import '../models/number_model.dart';
import '../shared/components/number_items.dart';

class NumberScreen extends StatelessWidget {
   const NumberScreen({Key? key}) : super(key: key);

   final List<ItemModel> number =  const [
     ItemModel(img: 'assets/images/numbers/number_one.png', jap: 'ichi', eng: 'one' , sound: 'sounds/numbers/number_one_sound.mp3'),
     ItemModel(img: 'assets/images/numbers/number_two.png', jap: 'Ni', eng: 'two' , sound: 'sounds/numbers/number_two_sound.mp3'),
     ItemModel(img: 'assets/images/numbers/number_three.png', jap: 'San', eng: 'three' , sound: 'sounds/numbers/number_three_sound.mp3'),
     ItemModel(img: 'assets/images/numbers/number_four.png', jap: 'Shi', eng: 'four' , sound: 'sounds/numbers/number_four_sound.mp3'),
     ItemModel(img: 'assets/images/numbers/number_five.png', jap: 'Go', eng: 'five' , sound: 'sounds/numbers/number_five_sound.mp3'),
     ItemModel(img: 'assets/images/numbers/number_six.png', jap: 'Roku', eng: 'six' , sound: 'sounds/numbers/number_six_sound.mp3'),
     ItemModel(img: 'assets/images/numbers/number_seven.png', jap: 'Sebun', eng: 'seven' , sound: 'sounds/numbers/number_seven_sound.mp3'),
     ItemModel(img: 'assets/images/numbers/number_eight.png', jap: 'Hachi', eng: 'eight' , sound: 'sounds/numbers/number_eight_sound.mp3'),
     ItemModel(img: 'assets/images/numbers/number_nine.png', jap: 'Kyu', eng: 'nine' , sound: 'sounds/numbers/number_nine_sound.mp3'),
     ItemModel(img: 'assets/images/numbers/number_ten.png', jap: 'Ju', eng: 'ten' , sound: 'sounds/numbers/number_ten_sound.mp3'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff48312b),
        title: Text(
          'Numbers',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
          itemBuilder: (context , index) => NumberComponents(num: number[index],color: Color(0xfffb9531),),
          itemCount: number.length,
      ),
    );
  }
}
