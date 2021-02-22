import 'package:app3/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldPAss extends StatelessWidget {
  final String text;
  final String hint;
  final Function onSave;
  final Function validator;

  const CustomTextFormFieldPAss({Key key, this.text, this.hint, this.onSave, this.validator}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomText(
          text: text,
          color: Colors.grey.shade900,
          fontsize: 14,
        ),
        TextFormField(
          onSaved: onSave,
          validator: validator,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              fillColor: Colors.white
          ),
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
        )
      ],
    );
  }
}
