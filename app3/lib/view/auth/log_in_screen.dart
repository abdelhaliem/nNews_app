import 'package:app3/const.dart';
import 'package:app3/view/widget/custom_bottom_so.dart';
import 'package:app3/view/widget/custom_flatbottom.dart';
import 'package:app3/view/widget/custom_text.dart';
import 'package:app3/view/widget/custom_textform_fild.dart';
import 'package:app3/view/widget/custom_textform_fild_pas.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "welcome",
                  fontsize: 30,
                ),
                CustomText(
                  text: "Sign Up",
                  fontsize: 18,
                  color: PRColors,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: "Sign in to Continue",
              color: Colors.grey,
              fontsize: 14,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              text: "Email",
              hint: "Enter Email",
              onSave: (value) {},
              validator: (value) {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormFieldPAss(
              text: "Password",
              hint: "Enter Password",
              onSave: (value) {},
              validator: (value) {},
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: 'Forget Password',
              alignment: Alignment.topRight,
              fontsize: 14,
            ),
            SizedBox(
              height: 20,
            ),
            CustomFlatBottom(
              text: 'SIGN IN',
              color: PRColors,
              onPressed: () {},
            ),
            CustomText(
              alignment: Alignment.center,
              text: "-OR-",
            ),
            SizedBox(
              height: 25,
            ),
            CustomBottomSo(
              text: 'Sign In with Facebook',
              image: 'assets/images/facebook.png',
            ),
            SizedBox(
              height: 35,
            ),
            CustomBottomSo(
              text: 'Sign In with Google',
              image: 'assets/images/google.png',
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              fontsize: 13,
              color: Colors.grey.shade300,
              alignment: Alignment.center,
              text: 'Design by Abd Elhalem Emad',
            )

          ],
        ),
      ),
    );
  }
}
