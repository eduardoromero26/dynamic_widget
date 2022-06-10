import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: NetworkImage(
                'https://s3.o7planning.com/images/tom-and-jerry.png'),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: Colors.black, width: 8),
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.all(12));
  }
}
