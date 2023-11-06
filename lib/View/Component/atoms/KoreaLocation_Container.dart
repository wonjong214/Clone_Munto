import 'package:flutter/material.dart';

class KoreaLocation_Container extends StatefulWidget{

  final int value;

  final int? groupvalue;

  final String text;

  final void Function(int) onChanged;

  const KoreaLocation_Container({Key? key, required this.value,required this.groupvalue,required this.text, required this.onChanged})
      : super(key: key);

  @override
  State<KoreaLocation_Container> createState() => _KoreaLocation_ContainerState();
}

class _KoreaLocation_ContainerState extends State<KoreaLocation_Container> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupvalue);

    return GestureDetector(
      onTap: () => widget.onChanged(widget.value),
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