import 'package:flutter/material.dart';

class MBRElevatedButtom extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Color? labelColor;
  const MBRElevatedButtom({
    Key? key,
    required this.label,
    this.onPressed,
    this.icon,
    this.backgroundColor,
    this.padding,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: padding,
        foregroundColor: Colors.white,
        backgroundColor: backgroundColor ?? Colors.greenAccent[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(width: 40),
          Text(label, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: labelColor ?? Colors.black)),
          Icon(
            icon,
            size: 30,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
