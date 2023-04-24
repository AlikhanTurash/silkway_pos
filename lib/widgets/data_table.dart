import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({Key? key}) : super(key: key);
  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('Штрих код', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Товар', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Ед', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Кол-во', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Цена за шт', textAlign: TextAlign.center)),
      DataColumn(label: VerticalDivider(thickness: 2)),
      DataColumn(label: Text('Сумма', textAlign: TextAlign.center))
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text('12346789')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Конфеты Ferrero Rocher 200г')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('шт')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('3'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('23 455')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70 365'))
      ]),
      DataRow(cells: [
        DataCell(Text('12346789')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Конфеты Ferrero Rocher 200г')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('шт')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('3'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('23 455')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70 365'))
      ]),
      DataRow(cells: [
        DataCell(Text('12346789')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Конфеты Ferrero Rocher 200г')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('шт')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('3'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('23 455')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70 365'))
      ]),
      DataRow(cells: [
        DataCell(Text('12346789')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Конфеты Ferrero Rocher 200г')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('шт')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('3'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('23 455')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70 365'))
      ]),
      DataRow(cells: [
        DataCell(Text('12346789')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Конфеты Ferrero Rocher 200г')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('шт')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('3'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('23 455')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70 365'))
      ]),
      DataRow(cells: [
        DataCell(Text('12346789')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Конфеты Ferrero Rocher 200г')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('шт')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('3'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('23 455')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70 365'))
      ]),
      DataRow(cells: [
        DataCell(Text('12346789')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Конфеты Ferrero Rocher 200г')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('шт')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('3'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('23 455')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70 365'))
      ]),
      DataRow(cells: [
        DataCell(Text('12346789')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('Конфеты Ferrero Rocher 200г')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('шт')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Center(child: Text('3'))),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('23 455')),
        DataCell(VerticalDivider(thickness: 2)),
        DataCell(Text('70 365'))
      ]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 4000.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: DataTable(
        columnSpacing: 10,
        headingRowHeight: 30,
        columns: _createColumns(),
        rows: _createRows(),
        headingTextStyle: const TextStyle(color: Colors.white),
        showBottomBorder: true,
        dividerThickness: 2,
        headingRowColor:
            MaterialStateProperty.resolveWith((states) => Colors.black),
      ),
    );
  }
}
