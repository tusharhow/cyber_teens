import 'package:cyber_teens/constants.dart';
import 'package:cyber_teens/screens/auth/login.dart';
import 'package:flutter/material.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Center(
              child: Image(
            image: AssetImage('assets/images/group.png'),
          )),
          const SizedBox(
            height: 80,
          ),
          const Text('Don’t worry we are \nhere for you',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 110,
          ),
          PrimaryButton(
            OnPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.OnPress,
  }) : super(key: key);
  final Function OnPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnPress as void Function(),
      child: Container(
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
      ),
    );
  }
}
