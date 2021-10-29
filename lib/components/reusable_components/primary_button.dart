import 'package:cyber_teens/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 1.25,
      decoration: BoxDecoration(
        color: defaultColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: const [
          SizedBox(
            width: 110,
          ),
          Center(
            child: Text(
              'Get Started',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Icon(Icons.keyboard_arrow_right, size: 30, color: Colors.white)
        ],
      ),
    );
  }
}
