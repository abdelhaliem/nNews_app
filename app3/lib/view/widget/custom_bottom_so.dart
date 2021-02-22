import 'package:app3/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomBottomSo extends StatelessWidget {
  final String text;
  final String image;

  const CustomBottomSo({Key key, this.text, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(blurRadius: 30, color: Colors.grey.shade300)]),
      child: FlatButton(
        autofocus: true,
        focusColor: Colors.white,
        splashColor: Colors.white,
        hoverColor: Colors.white,
        padding: EdgeInsets.all(15),
        onPressed: () {},
        color: Colors.grey.shade50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 25,
            ),
            SizedBox(
              width: 30,
            ),
            CustomText(
              alignment: Alignment.center,
              text: text,
            )
          ],
        ),
      ),
    );
  }
}
