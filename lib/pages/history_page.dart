import 'package:flutter/material.dart';
import 'package:silkway_pos/widgets/header.dart';
import 'package:silkway_pos/widgets/header_to_home.dart';
import 'package:silkway_pos/widgets/history_table.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderToHome(),
          OrdersHistoryTable(),
        ],
      ),
    );
  }
}
