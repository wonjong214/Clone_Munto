import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Common_IconButton extends StatelessWidget{
  Function func;
  bool like;

  Common_IconButton(this.func, this.like);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: (like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
        color: Colors.white,
        onPressed: () {func;}
    );
  }

}