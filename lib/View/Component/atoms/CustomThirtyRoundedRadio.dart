import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';


class CustomThirtyRoundedRadio extends StatefulWidget {

  final int value;

  final int? groupvalue;

  final String label;

  final EdgeInsetsGeometry padding;

  final double? textsize;

  final void Function(int) onChanged;

  final Color truebordercolor;
  final Color falsebordercolor;
  final Color truebackcolor;
  final Color falsebackcolor;
  final Color truetextcolor;
  final Color falsetextcolor;

  const CustomThirtyRoundedRadio({Key? key, required this.value,required this.groupvalue,required this.label,
    this.padding = const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,), this.textsize, required this.onChanged,
  required this.truebordercolor, required this.falsebordercolor, required this.truebackcolor, required this.falsebackcolor,
  required this.truetextcolor, required this.falsetextcolor})
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
            bordercolor: selected ? widget.truebordercolor :widget.falsebordercolor,
            backcolor: selected ? widget.truebackcolor : widget.falsebackcolor,
            widget: Text(
              widget.label!,
              style: TextStyle(
                fontSize: widget.textsize,
                color: selected ? widget.truetextcolor : widget.falsetextcolor
              ),
            ),
          )

        ],
      ),
    );
  }
}

