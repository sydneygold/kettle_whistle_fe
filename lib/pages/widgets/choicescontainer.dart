import 'package:flutter/material.dart';

class ChoicesContainer extends StatelessWidget {
  const ChoicesContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 450.0,
          height: 293.0,
          decoration: BoxDecoration(
            border: Border.all(
              width: 8.0,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}