import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../models/number_model.dart';

class NumberComponents extends StatelessWidget {
  NumberComponents({required this.num , required this.color});
  ItemModel num;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children:
        [
          Container(
            color: Color(0xfffff3d9),
            child: Image(
              image: AssetImage('${num.img}'),
            ),
          ),
          Expanded(child: PhrasesItem(item: num , color: color,)),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  PhrasesItem({required this.item , required this.color});
  ItemModel item;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children:
        [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(
                  '${item.jap}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,

                  ),
                ),
                Text(
                  '${item.eng}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 10),
            child: IconButton(
                splashColor: Colors.black,
                onPressed: () {
                  final player = AudioPlayer();
                  player.setSourceAsset(item.sound);
                  print('tappeed');
                },
                icon: Icon(
                  Icons.play_arrow,
                  size: 25,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}




