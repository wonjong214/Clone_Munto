import 'package:flutter/material.dart';
import '../../../screen/meeting/sub_page/filter/sub_page/filter_club.dart';
import '../../../screen/meeting/sub_page/filter/sub_page/filter_social.dart';

class KoreaLocationContainer extends StatefulWidget{

  final int value;

  final int? groupValue;

  final String text;

  final void Function(int) onChanged;

  int get getValue => value;

  const KoreaLocationContainer({Key? key, required this.value,required this.groupValue,required this.text, required this.onChanged})
      : super(key: key);

  @override
  State<KoreaLocationContainer> createState() => _KoreaLocation_ContainerState();
}

class _KoreaLocation_ContainerState extends State<KoreaLocationContainer> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);
    var socialParent = context.findAncestorStateOfType<FilterSocialState>();
    var clubParent = context.findAncestorStateOfType<FilterClubState>();

    return GestureDetector(
      onTap: ()=> widget.onChanged(widget.value),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? Color(0xfffceae9) : Colors.transparent,
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}