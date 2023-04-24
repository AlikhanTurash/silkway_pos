import 'dart:ui';

import 'package:flutter/material.dart';

class PopUpMenuSuccess extends StatelessWidget {
  const PopUpMenuSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 467,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              side: new BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            content: Column(
              children: [
                Container(
                  height: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'lib/assets/images/close-circle.jpg',
                          height: 25,
                          width: 25,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 450,
                  height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/images/success_vector.png',
                        width: 190,
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Оплата прошла успешно',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28,
                              color: Color(0xFF4CAF50),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 35),
                      SizedBox(
                        height: 42,
                        width: 255,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF33C9DD)),
                            onPressed: () {},
                            child: Text('Выдать чек')),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
