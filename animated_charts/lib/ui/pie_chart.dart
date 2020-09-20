import 'dart:math';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PieChart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throwUnimplementedError();
    return _PieChartState();
  }
}

class _PieChartState extends State {
  // Pie Chart stuffs start

  List<charts.Series<PieDataTask, String>> _seriesPieData;

  // Pie Chart stuffs end

  // Pie Chart stuffs start

  List<charts.Series<Pollution, String>> _seriesBarData;

  List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    // Pie Chart stuffs start
    var pieData = [
      new PieDataTask("Work", 50, Colors.red),
      new PieDataTask("Eat", 20, Colors.green),
      new PieDataTask("Commute", 30, Colors.blue),
      new PieDataTask("Tv", 30, Colors.yellow),
      new PieDataTask("Sleep", 70, Colors.purple),
      new PieDataTask("Others", 10, Colors.pink),
    ];

    _seriesPieData.add(
      charts.Series(
        data: pieData,
        domainFn: (PieDataTask task, _) => task.task,
        measureFn: (PieDataTask task, _) => task.taskvalue,
        colorFn: (PieDataTask task, _) =>
            charts.ColorUtil.fromDartColor(task.color),
        id: "Daily Task",
        labelAccessorFn: (PieDataTask row, _) => '${row.taskvalue}',
      ),
    );

    // Pie Chart stuffs end

    // Bar Chart stuffs start

    var data1 = [
      new Pollution(1990, "Asia", 30),
      new Pollution(1980, "Europe", 40),
      new Pollution(1990, "America", 10),
    ];
    var data2 = [
      new Pollution(1970, "Asia", 100),
      new Pollution(1980, "Europe", 150),
      new Pollution(1997, "America", 80),
    ];

    _seriesBarData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );

    _seriesBarData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

    var linesalesdata = [
      new Sales(0, 45),
      new Sales(1, 56),
      new Sales(2, 55),
      new Sales(3, 60),
      new Sales(4, 61),
      new Sales(5, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 35),
      new Sales(1, 46),
      new Sales(2, 45),
      new Sales(3, 50),
      new Sales(4, 51),
      new Sales(5, 60),
    ];

    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      new Sales(5, 60),
    ];

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    // Bar Chart stuffs start
  }

  @override
  void initState() {
    super.initState();
    _seriesPieData =
        List<charts.Series<PieDataTask, String>>(); // Pie Chart stuffs start
    _seriesBarData =
        List<charts.Series<Pollution, String>>(); // Bar Chart stuffs start
    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          bottom: TabBar(
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.chartPie),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.chartBar),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.chartLine),
              )
            ],
          ),
          title: Text("Animated Chart"),
          titleSpacing: 10.0,
          leading: Icon(Icons.adb),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Time Spend on Daily tasks',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(
                      //   height: 30.0,
                      //   child: Text("data"),
                      // ),
                      Divider(),

                      Expanded(
                        child: charts.PieChart(
                          _seriesPieData,

                          animate: true,
                          animationDuration: Duration(seconds: 3),

                          //Detail about the chart using name and of the things before the chart!

                          behaviors: [
                            new charts.DatumLegend(
                              outsideJustification:
                                  charts.OutsideJustification.endDrawArea,
                              horizontalFirst: false,
                              desiredMaxRows: 3,
                              cellPadding:
                                  new EdgeInsets.only(right: 10, bottom: 10.0),
                              entryTextStyle: charts.TextStyleSpec(
                                color: charts.MaterialPalette.cyan.shadeDefault,
                                // fontFamily: 'Georgia',
                                fontSize: 15,
                              ),
                            ),
                          ],

                          //Detail about the chart using numbers in chart

                          defaultRenderer: new charts.ArcRendererConfig(
                            // arcRatio: 5.4,
                            arcLength: 5,
                            arcWidth: 100,
                            arcRendererDecorators: [
                              charts.ArcLabelDecorator(
                                labelPosition: charts.ArcLabelPosition.auto,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Bar Chart stuffs start
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'SO₂ emissions, by world region (in million tonnes)',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: charts.BarChart(
                          _seriesBarData,
                          animate: true,
                          animationDuration: Duration(seconds: 3),
                          barGroupingType: charts.BarGroupingType.grouped,
                          // behaviors: [new charts.SeriesLegend()],
                          behaviors: [
                            new charts.SeriesLegend(
                              outsideJustification:
                                  charts.OutsideJustification.endDrawArea,
                              horizontalFirst: false,
                              desiredMaxRows: 3,
                              cellPadding:
                                  new EdgeInsets.only(right: 10, bottom: 10.0),
                              entryTextStyle: charts.TextStyleSpec(
                                color: charts.MaterialPalette.cyan.shadeDefault,
                                // fontFamily: 'Georgia',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Bar Chart stuffs end

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Sales for the first 5 years',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: charts.LineChart(
                          _seriesLineData,
                          defaultRenderer: new charts.LineRendererConfig(
                              includeArea: true, stacked: true),
                          animate: true,
                          animationDuration: Duration(seconds: 5),
                          behaviors: [
                            new charts.ChartTitle('Years',
                                behaviorPosition:
                                    charts.BehaviorPosition.bottom,
                                titleOutsideJustification:
                                    charts.OutsideJustification.middleDrawArea),
                            new charts.ChartTitle('Sales',
                                behaviorPosition: charts.BehaviorPosition.start,
                                titleOutsideJustification:
                                    charts.OutsideJustification.middleDrawArea),
                            new charts.ChartTitle(
                              'Departments',
                              behaviorPosition: charts.BehaviorPosition.end,
                              titleOutsideJustification:
                                  charts.OutsideJustification.middleDrawArea,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// I think this is more readable for the coders if we show it as a dart code.
class PieDataTask {
  String task;
  double taskvalue;
  Color color;
  PieDataTask(this.task, this.taskvalue, this.color);
}

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
