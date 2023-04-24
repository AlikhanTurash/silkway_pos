import 'package:flutter/material.dart';
import 'package:silkway_pos/pages/home_page.dart';
import 'package:silkway_pos/widgets/header_to_home.dart';

import '../widgets/orders_card.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

final ButtonStyle secondaryStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    primary: Colors.black45,
    elevation: 0);
final ButtonStyle primaryStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20), elevation: 0);

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            HeaderToHome(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Список заказов (3)',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OrderCard(
                    company: 'ТОО НурАс',
                    orderNumber: '0205122341',
                    orderCount: '1 500',
                    orderPrice: '1 500 000'),
                OrderCard(
                    company: 'ТОО НурАс',
                    orderNumber: '0205122341',
                    orderCount: '1 500',
                    orderPrice: '1 500 000'),
                OrderCard(
                    company: 'ТОО НурАс',
                    orderNumber: '0205122341',
                    orderCount: '1 500',
                    orderPrice: '1 500 000')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
