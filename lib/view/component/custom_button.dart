import 'package:flutter/material.dart';
import 'package:to_do_list/utils/color.dart';
import 'package:to_do_list/utils/size.dart';
import 'package:to_do_list/utils/textTheme.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomButton({Key? key,required this.onPressed, required this.text,})
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = Responsive.screenSize(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        decoration: BoxDecoration(
          color: AppColor.amber1,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            text,
            style: tTextStyleBoldBlack(16)
          ),
        ),
      ),
    );
  }
}
