import 'package:flutter/cupertino.dart';

class CustemText extends StatelessWidget {
  String text;
  Color tColor;
  FontWeight fontWeight;
  double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
        color: tColor,
        fontFamily: "almarai",
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }

  CustemText({this.text, this.tColor, this.fontWeight, this.size});
}
