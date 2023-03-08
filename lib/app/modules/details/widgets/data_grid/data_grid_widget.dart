import 'package:flutter/material.dart';

import '../../../../components/data-display/data_grid.dart';

class DetaisDataGridWidget extends StatelessWidget {
  const DetaisDataGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Dias e Horários', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(
            width: double.maxFinite,
            height: 300,
            child: MBRDataGrid(
              rows: [
                DataTable(
                  data: 'data',
                  value: 'Manhã',
                ),
              ],
              columns: const [Text(''), Text('2'), Text('3'), Text('4')],
              cells: (row) {
                return [
                  DataCell(Text(row.value)),
                  DataCell(Text(row.data)),
                  DataCell(Text(row.data)),
                  DataCell(Text(row.data)),
                ];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DataTable {
  final String data;
  final String value;
  DataTable({
    required this.data,
    required this.value,
  });
}
