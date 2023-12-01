import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  final int value;
  final int groupValue;
  final void Function(int) onChanged;
  const CustomRadio({Key? key, required this.value, required this.groupValue, required this.onChanged})
      : super(key: key);

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);

    return InkWell(
      onTap: () => widget.onChanged(widget.value),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(shape: BoxShape.circle, color: selected ? Colors.white : Colors.grey[200]),
        child: Icon(
          Icons.circle,
          size: 30,
          color: selected ? Colors.deepPurple : Colors.grey[200],
        ),
      ),
    );
  }
}