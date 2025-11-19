import 'package:flutter/material.dart';
import 'bootstrap_col.dart';


class BootstrapRow extends StatelessWidget {
  final List<BootstrapCol> children;
  final double gutter;


  const BootstrapRow({
    super.key,
    required this.children,
    this.gutter = 16,
  });


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;


    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          spacing: gutter,
          runSpacing: gutter,
          children: children.map((col) {
            int cols = col.getColumnForWidth(width);
            double itemWidth = (constraints.maxWidth / (12 / cols)) - gutter;


            return SizedBox(
              width: itemWidth,
              child: col.child,
            );
          }).toList(),
        );
      },
    );
  }
}