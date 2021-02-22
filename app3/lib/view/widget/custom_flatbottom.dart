import 'package:app3/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomFlatBottom extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  const CustomFlatBottom({Key key, this.text, this.color, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ),
            padding: EdgeInsets.all(18),
            onPressed: onPressed,
            color: color,
            child: CustomText(
              color: Colors.white,
              text: text,
              alignment: Alignment.center,
            )
        )
    );
  }
}
