import 'package:flutter/material.dart';
import 'package:silkway_pos/pages/home_page.dart';
import 'package:silkway_pos/widgets/data_table.dart';
import 'package:silkway_pos/widgets/footer_menu.dart';
import 'package:silkway_pos/widgets/footer_order.dart';

class OrderTablePage extends StatefulWidget {
  const OrderTablePage({Key? key}) : super(key: key);

  @override
  State<OrderTablePage> createState() => _OrderTablePageState();
}

final ButtonStyle secondaryStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    primary: Colors.black45,
    elevation: 0);
final ButtonStyle primaryStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20), elevation: 0);

class _OrderTablePageState extends State<OrderTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              height: 75,
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
                      alignment: Alignment.centerRight,
                    ),
                    Expanded(child: SizedBox.shrink()),
                    SizedBox(
                      width: 250,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: MyDataTable(),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                height: 155,
                width: double.infinity,
                child: FooterMenuOrder()),
          ],
        ),
      ),
    );
  }
}
