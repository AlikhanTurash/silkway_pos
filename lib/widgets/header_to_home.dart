import 'package:flutter/material.dart';

import 'package:silkway_pos/pages/home_page.dart';

class HeaderToHome extends StatefulWidget {
  const HeaderToHome({Key? key}) : super(key: key);

  @override
  State<HeaderToHome> createState() => _HeaderToHomeState();
}

final ButtonStyle secondaryStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    primary: Colors.black45,
    elevation: 0);
final ButtonStyle primaryStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20), elevation: 0);

class _HeaderToHomeState extends State<HeaderToHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Container(
        child: Row(
          children: [
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Homepage(
                                accesstoken: '',
                              )));
                },
                style: secondaryStyle,
                child: Text(
                  'Главная страница',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Expanded(child: SizedBox.shrink()),
            Image.asset(
              'lib/assets/images/logo.png',
              width: 300,
              alignment: Alignment.centerRight,
            ),
            Expanded(child: SizedBox.shrink()),
            SizedBox(
              width: 250,
            )
          ],
        ),
      ),
    );
  }
}
