import 'package:flutter/material.dart';

class LoungeListTile extends StatefulWidget{
  String image;
  String name;
  String date;


  LoungeListTile({required this.image, required this.name, required this.date});

  @override
  State<LoungeListTile> createState() => _LoungeListTileState();
}

class _LoungeListTileState extends State<LoungeListTile> {
  bool follow = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.image),
        ),
        title: Text(widget.name),
        subtitle: Text(
          widget.date,
          style: TextStyle(
              color: Color(0x88a9a9a9)
          ),
        ),
        trailing: Wrap(
            spacing: 20,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(follow == true)
                      follow = false;
                    else
                      follow = true;
                  });
                },
                child: Text(
                  follow ? '팔로우' : '팔로잉',
                  style: TextStyle(
                    fontSize: 15,
                    color: follow ? Colors.grey : Colors.red,
                  ),
                ),
              ),
              /*Icon(Icons.more_horiz)*/
            ]
        )
    );
  }
}