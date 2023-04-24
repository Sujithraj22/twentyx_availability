import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconList extends StatefulWidget {
  @override
  _IconListState createState() => _IconListState();
}

class _IconListState extends State<IconList> {
  List<IconData> icons = [
    Icons.favorite_border,
    Icons.thumb_up,
    Icons.thumb_down,
    Icons.star_border,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(icons[index]),
            title: Text('Icon ${index + 1}'),
            onTap: () {
              setState(() {
                switch (index) {
                  case 0:
                    icons[0] = Icons.favorite;
                    break;
                  case 1:
                    icons[1] = Icons.thumb_up_alt;
                    break;
                  case 2:
                    icons[2] = Icons.thumb_down_alt;
                    break;
                  case 3:
                    icons[3] = Icons.star;
                    break;
                }
              });
            },
          );
        },
      ),
    );
  }
}
