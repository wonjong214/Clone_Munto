import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CircleRadio_Button.dart';

class CustomRadioListtile extends StatefulWidget {

  final int value;

  final int? groupvalue;

  final String label;

  final void Function(int) onChanged;

  const CustomRadioListtile({Key? key, required this.value,required this.groupvalue,required this.label, required this.onChanged})
      : super(key: key);

  @override
  State<CustomRadioListtile> createState() => _CustomRadioListtileState();
}

class _CustomRadioListtileState extends State<CustomRadioListtile> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupvalue);

    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: () => widget.onChanged(widget.value),
      child: Row(
        children: [
          CircleRadio_Button(
              bordercolor: selected ? Colors.red : Colors.grey,
              incirclecolor: selected ? Colors.red : Colors.transparent),
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

