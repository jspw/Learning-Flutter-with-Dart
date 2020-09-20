import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './ui/pie_chart.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Bal",
      home: PieChart(),
    )
  );
}

