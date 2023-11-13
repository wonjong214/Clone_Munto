import 'package:flutter/material.dart';

class CalenderRadio extends StatefulWidget{
  final int value;

  final int? groupvalue;

  final String day;

  final int date;

  final void Function(int) onChanged;

  const CalenderRadio({Key? key, required this.value,required this.groupvalue,
    required this.day, required this.date, required this.onChanged})
      : super(key: key);

  @override
  State<CalenderRadio> createState() => _CalenderRadioState();
}

class _CalenderRadioState extends State<CalenderRadio> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupvalue);

    return GestureDetector(
      onTap: () => widget.onChanged(widget.value),
      child: Container(
        width: 40,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: selected ? Colors.red : Colors.transparent),
        child: Column(
          children: [
            Spacer(flex: 1),
            Text(
              widget.day,
              style: TextStyle(
                  color: selected ? Colors.white : Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            Spacer(flex: 1),
            Text(
              '${widget.date}',
              style: TextStyle(
                  color: selected ? Colors.white : Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(flex: 1),
          ],
        ),
      )
    );
  }
}