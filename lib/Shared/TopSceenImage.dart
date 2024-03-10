import 'package:flutter/cupertino.dart';

class TopScreenImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/welcome.png'),
        ),
      ),
      height: 300.0,
    );
  }
}
