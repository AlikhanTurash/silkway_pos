import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:silkway_pos/pages/order_table_page.dart';

class OrderCard extends StatelessWidget {
  final String company;
  final String orderNumber;
  final String orderCount;
  final String orderPrice;
  OrderCard(
      {Key? key,
      required this.company,
      required this.orderNumber,
      required this.orderCount,
      required this.orderPrice})
      : super(key: key);

  final ButtonStyle secondaryStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Colors.black45,
      elevation: 0);
  final ButtonStyle primaryStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20), elevation: 0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 220,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Поставщик:'),
                Text(
                  '${company}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Номер заказа:'),
                Text(
                  '$orderNumber',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Количество товаров:'),
                Text(
                  '$orderCount шт',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Цена заказа:'),
                Text(
                  '$orderPrice тг',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              width: 250,
              height: 40,
              child: ElevatedButton(
                style: primaryStyle,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderTablePage()));
                },
                child: const Text(
                  'Список товаров',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
