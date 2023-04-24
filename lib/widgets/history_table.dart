import 'package:flutter/material.dart';

class OrdersHistoryTable extends StatelessWidget {
  const OrdersHistoryTable({Key? key}) : super(key: key);
  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('Номер чека', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Кассир', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Дата', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Кол-во', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Оплата', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Сумма', textAlign: TextAlign.center))
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text('2345')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Наличка')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2346')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Карта')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2347')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Наличка')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2348')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Карта')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2349')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Наличка')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2350')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Карта')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2351')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Наличка')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2352')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Карта')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2353')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Наличка')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2354')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Карта')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2355')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Наличка')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2356')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Карта')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2357')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Наличка')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2358')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Карта')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2359')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Наличка')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
      DataRow(cells: [
        DataCell(Text('2360')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Елизавета')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('10.09.2022')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('15'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Карта')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70365 тг'))
      ]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 4000.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: DataTable(
        columnSpacing: 10,
        headingRowHeight: 30,
        columns: _createColumns(),
        rows: _createRows(),
        headingTextStyle: TextStyle(color: Colors.white),
        showBottomBorder: true,
        dividerThickness: 2,
        headingRowColor:
            MaterialStateProperty.resolveWith((states) => Colors.black),
      ),
    );
  }
}
