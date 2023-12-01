import 'package:flutter/material.dart';
import '../../atoms/circle_radio_button.dart';

class CustomRadioListtile extends StatefulWidget {

  final int value;

  final int? groupValue;

  final String label;

  final void Function(int) onChanged;

  const CustomRadioListtile({Key? key, required this.value,required this.groupValue,required this.label, required this.onChanged})
      : super(key: key);

  @override
  State<CustomRadioListtile> createState() => _CustomRadioListtileState();
}

class _CustomRadioListtileState extends State<CustomRadioListtile> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);

    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: () => widget.onChanged(widget.value),
      child: Row(
        children: [
          CircleRadioButton(
              bordercolor: selected ? Colors.red : Colors.grey,
              inCircleColor: selected ? Colors.red : Colors.transparent),
          SizedBox(width: 15,),
          Text(
            widget.label!,
            style: TextStyle(
              fontSize: 17,
            ),
          )
        ],
      ),
    );
  }
}

