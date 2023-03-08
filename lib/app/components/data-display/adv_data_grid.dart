import 'package:flutter/material.dart';

class AdvDataGrid<T, B extends T> extends StatefulWidget {
  final Widget? header;
  final List<Widget> columns;
  final List<T> rows;
  final int rowsPerPage;
  final List<DataCell> Function(T) cells;
  final Future<List<B>> Function()? onPageChanged;
  final void Function(T)? onLongPress;
  final Color Function(T)? colorRow;

  const AdvDataGrid({
    super.key,
    required this.columns,
    this.header,
    required this.rows,
    required this.cells,
    this.rowsPerPage = 5,
    this.onPageChanged,
    this.onLongPress,
    this.colorRow,
  });

  @override
  State<AdvDataGrid<T, B>> createState() => _AdvDataGridState<T, B>();
}

class _AdvDataGridState<T, B extends T> extends State<AdvDataGrid<T, B>> {
  late int loadRow;
  var load = false;

  @override
  void initState() {
    loadRow = widget.rows.length;
    super.initState();
  }

  Future<void> onPageChanged(int page) async {
    if (widget.onPageChanged != null) {
      final totalPage = page + widget.rowsPerPage;
      if (widget.rows.length <= totalPage) {
        try {
          load = true;
          setState(() {});
          final newRows = await widget.onPageChanged!();
          widget.rows.addAll(newRows);
        } catch (e) {
        } finally {
          load = false;
          setState(() {});
        }
      }
    }
  }

  int calcHeightRow() {
    if (widget.rows.isEmpty) {
      return 1;
    } else if (widget.rows.length < widget.rowsPerPage) {
      return widget.rows.length;
    }
    return widget.rowsPerPage;
  }

  @override
  Widget build(BuildContext context) {
    loadRow = widget.rows.length - (load ? 1 : 0);
    return ListView(
      children: [
        PaginatedDataTable(
          header: widget.header,
          rowsPerPage: calcHeightRow(),
          onPageChanged: onPageChanged,
          columns: widget.columns
              .map((widget) => DataColumn(label: widget))
              .toList(),
          source: _DataSource(
            rows: widget.rows,
            cells: widget.cells,
            loadRow: loadRow,
            onLongPress: widget.onLongPress,
            colorRow: widget.colorRow,
          ),
        ),
      ],
    );
  }
}

class _DataSource<T> extends DataTableSource {
  final List<T> rows;
  final int loadRow;
  final List<DataCell> Function(T) cells;
  final void Function(T)? onLongPress;
  final Color Function(T)? colorRow;

  _DataSource({
    required this.cells,
    required this.rows,
    required this.loadRow,
    required this.onLongPress,
    required this.colorRow,
  });

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);
    if (index >= loadRow) return null;

    return DataRow.byIndex(
      index: index,
      onLongPress: () => onLongPress != null ? onLongPress!(rows[index]) : null,
      color: colorRow != null
          ? MaterialStateProperty.all(colorRow!(rows[index]))
          : null,
      cells: cells(
        rows[index],
      ),
    );
  }

  @override
  int get rowCount => rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
