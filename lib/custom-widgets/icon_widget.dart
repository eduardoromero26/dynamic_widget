import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Icon(
          Icons.star,
          size: 32,
          color: Colors.yellow[900],
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
