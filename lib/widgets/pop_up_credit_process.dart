import 'dart:ui';

import 'package:flutter/material.dart';

class PopUpMenuProcess extends StatelessWidget {
  const PopUpMenuProcess({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.only(top: 0),
                  width: 450,
                  height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/images/card-pos.png',
                        width: 190,
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 200,
                        child: Text(
                          'В обработке',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              color: Color(0xFF76777E),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 35),
                      Container(
                        alignment: Alignment.center,
                        height: 42,
                        width: 255,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFCDD5E1)),
                        child: Text('Выдать чек',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
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
