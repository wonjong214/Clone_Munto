import 'package:flutter/material.dart';

const Row moreTextGroupRow = Row(
  children: [
    Text(
      '더보기',
      style: TextStyle(
        fontSize: 15,
        color: Color(0xffa9a9a9),
      ),
    ),
    SizedBox(
      width: 3,
    ),
    Icon(
      Icons.arrow_forward_ios,
      size: 12,
      color: Color(0xffa9a9a9),
    ),
  ],
);
