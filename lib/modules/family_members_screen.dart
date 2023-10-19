import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';
import '../shared/components/number_items.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({Key? key}) : super(key: key);
  
  final List<ItemModel> family_member = const [
    ItemModel(img: 'assets/images/family_members/family_father.png', jap: 'father', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/family_members/family_daughter.png', jap: 'daughter', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/family_members/family_grandfather.png', jap: 'GrandFather', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/family_members/family_mother.png', jap: 'mother', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/family_members/family_grandmother.png', jap: 'Grandmother', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/family_members/family_older_brother.png', jap: 'olderBrother', eng: 'olderBrother', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/family_members/family_mother.png', jap: 'mother', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/family_members/family_grandmother.png', jap: 'Grandmother', eng: 'father', sound: '/sounds/family_members/father.wav'),
    ItemModel(img: 'assets/images/family_members/family_older_brother.png', jap: 'olderBrother', eng: 'olderBrother', sound: '/sounds/family_members/father.wav')
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
        itemBuilder: (context , index) => NumberComponents(num: family_member[index], color: Color(0xff548033),),
        itemCount: family_member.length,
      ),
    );
  }
}
