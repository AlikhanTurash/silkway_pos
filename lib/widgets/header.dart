import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

const List<String> sales = <String>['Розница    '];
const List<String> cashiers = <String>['Наталия', 'Дмитрий', 'Екатерина'];

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            SizedBox(
              width: 200.0,
              child: Table(children: const [
                TableRow(
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            style: TextStyle(fontFamily: 'Montserrat'),
                            'Продажа'),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w800,
                                // fontStyle: FontStyle.italic,
                                fontSize: 15),
                            'Розница'),
                      ),
                    ),
                  ],
                ),
                TableRow(children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0, top: 22.0),
                      child: Text(
                          style: TextStyle(fontFamily: 'Montserrat'), 'Кассир'),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0, top: 22.0),
                      child: Text(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w800,
                              // fontStyle: FontStyle.italic,
                              fontSize: 15),
                          'Наталия'),
                    ),
                  ),
                ])
              ]),
            ),
            Expanded(child: SizedBox.shrink()),
            Image(
              image: AssetImage('lib/assets/images/logo.png'),
              width: 300,
            ),
            Expanded(child: SizedBox.shrink()),
            SizedBox(
              width: 200.0,
              child: Table(children: const [
                TableRow(children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Text(
                        style: TextStyle(fontFamily: 'Montserrat'), 'Скидка'),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 50,
                        height: 40,
                        child: TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), hintText: '%'),
                        ),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Text(
                        style: TextStyle(fontFamily: 'Montserrat'), 'Чек №'),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 50,
                        height: 40,
                        child: TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ])
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownButtonCashiers extends StatefulWidget {
  const DropdownButtonCashiers({super.key});

  @override
  State<DropdownButtonCashiers> createState() => _DropdownButtonCashiersState();
}

class _DropdownButtonCashiersState extends State<DropdownButtonCashiers> {
  String dropdownValue = cashiers.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: cashiers.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownButtonSales extends StatefulWidget {
  const DropdownButtonSales({super.key});

  @override
  State<DropdownButtonSales> createState() => _DropdownButtonSalesState();
}

class _DropdownButtonSalesState extends State<DropdownButtonSales> {
  String dropdownValue = sales.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: sales.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class Header extends StatefulWidget {
//   const Header({Key? key}) : super(key: key);
//
//   @override
//   State<Header> createState() => _HeaderState();
// }
//
// const List<String> sales = <String>['Розница', 'Оптом'];
// const List<String> cashiers = <String>['Наталия', 'Светозар', 'Екатерина'];
//
// class _HeaderState extends State<Header> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         padding: EdgeInsets.all(25),
//         child: Row(
//           children: [
//             Column(
//               children: [
//                 Row(
//                   children: const [
//                     Text(style: TextStyle(fontFamily: 'Montserrat'), 'Продажа'),
//                     SizedBox(
//                       width: 12.0,
//                     ),
//                     DropdownButtonSales()
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     Text(style: TextStyle(fontFamily: 'Montserrat'), 'Кассир'),
//                     SizedBox(
//                       width: 12.0,
//                     ),
//
//                     // DropdownButtonCashier()
//                   ],
//                 )
//               ],
//             ),
//             const SizedBox(
//               width: 50.0,
//             ),
//             const Image(
//               image: AssetImage('lib/assets/images/logo.png'),
//               width: 500,
//             ),
//             const SizedBox(
//               width: 50.0,
//             ),
//             Column(
//               children: [
//                 Row(
//                   children: const [
//                     Text(style: TextStyle(fontFamily: 'Montserrat'), 'Скидка'),
//                     SizedBox(
//                       width: 12.0,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: const [
//                     Text(style: TextStyle(fontFamily: 'Montserrat'), 'Чек №'),
//                     SizedBox(
//                       width: 12.0,
//                     ),
//                   ],
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class DropdownButtonSales extends StatefulWidget {
//   const DropdownButtonSales({super.key});
//
//   @override
//   State<DropdownButtonSales> createState() => _DropdownButtonSalesState();
// }
//
// class _DropdownButtonSalesState extends State<DropdownButtonSales> {
//   String dropdownValue = sales.first;
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.arrow_downward),
//       elevation: 16,
//       style: const TextStyle(color: Colors.deepPurple),
//       underline: Container(
//         height: 2,
//         color: Colors.deepPurpleAccent,
//       ),
//       onChanged: (String? value) {
//         // This is called when the user selects an item.
//         setState(() {
//           dropdownValue = value!;
//         });
//       },
//       items: sales.map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }
