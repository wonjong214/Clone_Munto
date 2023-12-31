import 'package:flutter/material.dart';

import 'common_border_container.dart';


class CustomThirtyRoundedRadio extends StatefulWidget {

  final int value;

  final int? groupvalue;

  final String label;

  final EdgeInsetsGeometry padding;

  final double? textsize;

  final void Function(int) onChanged;

  final Color trueBorderColor;
  final Color falseBorderColor;
  final Color trueBackColor;
  final Color falseBackColor;
  final Color trueTextColor;
  final Color falseTextColor;

  const CustomThirtyRoundedRadio({Key? key, required this.value,required this.groupvalue,required this.label,
    this.padding = const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,), this.textsize, required this.onChanged,
  required this.trueBorderColor, required this.falseBorderColor, required this.trueBackColor, required this.falseBackColor,
  required this.trueTextColor, required this.falseTextColor})
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
          CommonBorderContainer(
            padding: widget.padding,
            borderColor: selected ? widget.trueBorderColor :widget.falseBorderColor,
            backColor: selected ? widget.trueBackColor : widget.falseBackColor,
            widget: Text(
              widget.label!,
              style: TextStyle(
                fontSize: widget.textsize,
                color: selected ? widget.trueTextColor : widget.falseTextColor
              ),
            ),
          )

        ],
      ),
    );
  }
}

