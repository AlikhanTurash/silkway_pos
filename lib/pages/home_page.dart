import 'package:flutter/material.dart';
import 'package:silkway_pos/widgets/header.dart';
import 'package:silkway_pos/widgets/data_table.dart';
import 'package:silkway_pos/widgets/footer_menu.dart';

class Homepage extends StatefulWidget {
  final String accesstoken;
  const Homepage({Key? key, required this.accesstoken}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          const MyDataTable(),
          const Expanded(child: SizedBox.expand()),
          FooterMenu(),
        ],
      ),
    );
  }
}
