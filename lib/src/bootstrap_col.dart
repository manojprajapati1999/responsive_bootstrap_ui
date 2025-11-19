import 'package:flutter/material.dart';
import 'breakpoints.dart';

class BootstrapCol {
  final Widget child;
  final int xs;
  final int sm;
  final int md;
  final int lg;
  final int xl;


  BootstrapCol({
    required this.child,
    this.xs = 12,
    this.sm = 12,
    this.md = 6,
    this.lg = 4,
    this.xl = 3,
  });


  int getColumnForWidth(double width) {
    if (width >= BootstrapBreakpoints.xl) return xl;
    if (width >= BootstrapBreakpoints.lg) return lg;
    if (width >= BootstrapBreakpoints.md) return md;
    if (width >= BootstrapBreakpoints.sm) return sm;
    return xs;
  }
}