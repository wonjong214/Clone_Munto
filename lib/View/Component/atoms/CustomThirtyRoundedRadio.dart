import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/ThirtyRoundedBorderContainer.dart';


class CustomThirtyRoundedRadio extends StatefulWidget {

  final int value;

  final int? groupvalue;

  final String label;

  final void Function(int) onChanged;

  const CustomThirtyRoundedRadio({Key? key, required this.value,required this.groupvalue,required this.label, required this.onChanged})
      : super(key: key);

  @override
  State<CustomThirtyRoundedRadio> createState() => _CustomThirtyRoundedRadioState();
}

class _CustomThirtyRoundedRadioState extends State<CustomThirtyRoundedRadio> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupvalue);

    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: () => widget.onChanged(widget.value),
      child: Row(
        children: [
          ThirtyRoundedBorderContainer(
            padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
            bordercolor: selected ? Colors.red :Colors.grey.shade300,
            backcolor: selected ? Colors.red : Colors.transparent,
            widget: Text(
              widget.label!,
              style: TextStyle(
                fontSize: 17,
                color: selected ? Colors.white : Colors.black
              ),
            ),
          )

        ],
      ),
    );
  }
}

