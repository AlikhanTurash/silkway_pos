import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:silkway_pos/pages/history_page.dart';

import 'package:silkway_pos/widgets/pop_up_cash.dart';
import 'package:silkway_pos/widgets/pop_up_credit_process.dart';
import 'package:silkway_pos/widgets/pop_up_credit_cancel.dart';
import 'package:silkway_pos/widgets/pop_up_credit_success.dart';
import 'package:silkway_pos/pages/orders_page.dart';

class FooterMenuOrder extends StatelessWidget {
  FooterMenuOrder({Key? key}) : super(key: key);

  final ButtonStyle greenStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Colors.green,
      elevation: 0);
  final ButtonStyle primaryStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20), elevation: 0);

  bool payment = true;

  showCashDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopUpCash();
      },
    );
  }

  showCreditDialogProcess(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopUpMenuProcess();
      },
    );
  }

  showCreditDialogCancel(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopUpMenuCancel();
      },
    );
  }

  showCreditDialogSuccess(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopUpMenuSuccess();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 60,
                width: 320,
                child: ElevatedButton(
                  style: primaryStyle,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrdersPage()));
                  },
                  child: const Text(
                    'Принять товар',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 60,
                width: 320,
                child: ElevatedButton(
                  style: greenStyle,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HistoryPage()));
                  },
                  child: const Text(
                    'Оплатить',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          VerticalDivider(thickness: 2),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Заказ:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text('10 товаров (250 шт)',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black)),
              SizedBox(
                height: 20,
              ),
              Text('Прибыло:',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
              Text('10 товаров (250 шт)',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black)),
            ],
          ),
          const Expanded(child: SizedBox.shrink()),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Итого: ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 35,
                    )),
                Text('343 640тг',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
