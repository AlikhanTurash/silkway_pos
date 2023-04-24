import 'dart:ui';

import 'package:flutter/material.dart';

class PopUpCash extends StatefulWidget {
  const PopUpCash({Key? key}) : super(key: key);

  @override
  State<PopUpCash> createState() => _PopUpCashState();
}

class _PopUpCashState extends State<PopUpCash> {
  int paymentSum = 1500;
  int paymentFact = 0;
  int change = 0;

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 420,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              side: new BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            title: Text('Получено от клиента:'),
            content: Column(
              children: [
                TextField(
                  maxLines: 1,
                  controller: _controller,
                  onSubmitted: (String value) {
                    paymentFact = int.parse(value);
                    setState(() {});
                  },
                  onChanged: (String value) {
                    paymentFact = int.parse(value);
                    setState(() {});
                    change = paymentFact - paymentSum;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'тг'),
                ),
                SizedBox(height: 15),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Получено:',
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          _controller.text + ' тг',
                          textAlign: TextAlign.end,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('К оплате:'),
                        Text(
                          paymentSum.toString() + ' тг',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Color(0xFF494A53),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Сдача:'),
                    Text(
                      change.toString() + ' тг',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFF70BF73),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('Без сдачи',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                SizedBox(height: 15),
                Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFF33C9DD),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('Выдать чек',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class PopUpCash extends StatelessWidget {
//   PopUpCash({Key? key}) : super(key: key);
//
//   int paymentSum = 1500;
//   int paymentFact = 0;
//   int change = 0;
//
//   late TextEditingController _controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 420,
//         child: BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//           child: AlertDialog(
//             shape: RoundedRectangleBorder(
//               side: new BorderSide(color: Colors.black),
//               borderRadius: BorderRadius.all(Radius.circular(20.0)),
//             ),
//             title: Text('Получено от клиента:'),
//             content: Column(
//               children: [
//                 TextField(
//                   maxLines: 1,
//                   controller: _controller,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(), hintText: 'тг'),
//                 ),
//                 SizedBox(height: 15),
//                 Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Получено:',
//                           textAlign: TextAlign.start,
//                         ),
//                         Text(
//                           '2000 тг',
//                           textAlign: TextAlign.end,
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 15),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text('К оплате:'),
//                         Text(
//                           paymentSum.toString() + ' тг',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//                 Divider(
//                   thickness: 2,
//                   color: Color(0xFF494A53),
//                 ),
//                 SizedBox(height: 5),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Сдача:'),
//                     Text(
//                       change.toString() + ' тг',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   alignment: Alignment.center,
//                   width: 250,
//                   height: 40,
//                   decoration: BoxDecoration(
//                       color: Color(0xFF70BF73),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Text('Без сдачи',
//                       style: TextStyle(
//                         color: Colors.white,
//                       )),
//                 ),
//                 SizedBox(height: 15),
//                 Container(
//                   alignment: Alignment.center,
//                   width: 250,
//                   height: 40,
//                   decoration: BoxDecoration(
//                       color: Color(0xFF33C9DD),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Text('Выдать чек',
//                       style: TextStyle(
//                         color: Colors.white,
//                       )),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
