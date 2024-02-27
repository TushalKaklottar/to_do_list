import 'package:flutter/cupertino.dart';
import 'package:to_do_list/utils/color.dart';
import 'package:to_do_list/utils/size.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({Key? key,this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    Size size = Responsive.screenSize(context);
    return Container(
      height: size.height / 15,
      width: size.width / 7,
      decoration: BoxDecoration(
        color: AppColor.amber1,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
