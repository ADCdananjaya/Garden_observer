import 'package:charts_flutter/flutter.dart' as charts;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

/*
class Moisture extends StatelessWidget {
  const Moisture({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moisture levels'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: Text('Moisture levels'),
            ),
            Expanded(
              child: new charts.LineChart(
                _getSeriesData(),
                animate: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
*/
int i = 0;

class Moisture extends StatefulWidget {
  const Moisture({Key? key}) : super(key: key);
  _MoistureState createState() => _MoistureState();
}

class _MoistureState extends State<Moisture> {
  /*
  List<String> docIds = [];
  Future getDocIds() async {
    await FirebaseFirestore.instance.collection('moistureLevels').get().then((snapshot) => snapshot.docs.forEach((element) {
          print(element.reference);
          docIds.add(element.reference.id);
        }));
  }
*/
  final CollectionReference _products = FirebaseFirestore.instance.collection('moistureLevels');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moisture levels'),
      ),
      body: StreamBuilder(
        stream: _products.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            for (i; i < streamSnapshot.data!.docs.length; i++) {
              final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[i];
              GetMoistureLevels(documentSnapshot['level'], documentSnapshot['recordNumber']).addData2();
            }
            ;

            return Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Center(
                    child: Text('Moisture levels'),
                  ),
                  Expanded(
                    child: new charts.LineChart(
                      _getSeriesData(),
                      animate: true,
                      behaviors: [
                        new charts.PanAndZoomBehavior()
                      ],
                    ),
                  )
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

List<int> recordNumber = [];
List<int> moistureLevel = [];

class GetMoistureLevels {
  int number;
  int level;

  GetMoistureLevels(this.number, this.level);
  printData() {
    print(number);
    print(level);
  }

  addData() {
    recordNumber.add(number);
    moistureLevel.add(level);
  }

  addData2() {
    data.add(new SalesData(level, number));
  }
}

class SalesData {
  final int year;
  final int sales;

  SalesData(this.year, this.sales);
}

final List<SalesData> data = [];

_getSeriesData() {
  List<charts.Series<SalesData, int>> series = [
    charts.Series(id: "Sales", data: data, domainFn: (SalesData series, _) => series.year, measureFn: (SalesData series, _) => series.sales, colorFn: (SalesData series, _) => charts.MaterialPalette.blue.shadeDefault)
  ];
  return series;
}
