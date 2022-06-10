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
class Moisture extends StatefulWidget {
  const Moisture({Key? key}) : super(key: key);
  _MoistureState createState() => _MoistureState();
}

class _MoistureState extends State<Moisture> {
  List<String> docIds = [];
  Future getDocIds() async {
    await FirebaseFirestore.instance.collection('moistureLevels').get().then((snapshot) => snapshot.docs.forEach((element) {
          print(element.reference);
          docIds.add(element.reference.id);
        }));
  }

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
            for (int i = 0; i < streamSnapshot.data!.docs.length; i++) {
              final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[i];
              GetMoistureLevels(documentSnapshot['level'], documentSnapshot['recordNumber']).addData2();
              print('level is: ' + documentSnapshot['level'].toString());
              print('record number is: ' + documentSnapshot['recordNumber'].toString());
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
                    ),
                  )
                ],
              ),
            );
            /*
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
                //adding data to a list
                GetMoistureLevels(documentSnapshot['level'], documentSnapshot['recordNumber']).addData2();
                //return listTiel

                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(documentSnapshot['date'].toString()),

                    //title: Text(recordNumber.map((number) {
                    //  return Text(number.toString());
                    //}).toString()),

                    subtitle: Text(documentSnapshot['level'].toString()),

                    //subtitle: Text(moistureLevel.map((level) {
                    //  return Text(level.toString());
                    //}).toString()),
                  ),
                );
              },
            );
            */
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

final List<SalesData> data = [
  /*
  new SalesData(0, 1600000),
  new SalesData(1, 1735000),
  new SalesData(2, 1678000),
  new SalesData(3, 1890000),
  new SalesData(4, 1907000),
  new SalesData(5, 2300000),
  new SalesData(6, 2360000),
  new SalesData(7, 1980000),
  new SalesData(8, 2654000),
  new SalesData(9, 2789070),
  new SalesData(10, 3020000),
  new SalesData(11, 3245900),
  new SalesData(12, 4098500),
  new SalesData(13, 4500000),
  new SalesData(14, 4456500),
  new SalesData(15, 3900500),
  new SalesData(16, 5123400),
  new SalesData(17, 5589000),
  new SalesData(18, 5940000),
  new SalesData(19, 6367000),
  */
];

_getSeriesData() {
  List<charts.Series<SalesData, int>> series = [
    charts.Series(id: "Sales", data: data, domainFn: (SalesData series, _) => series.year, measureFn: (SalesData series, _) => series.sales, colorFn: (SalesData series, _) => charts.MaterialPalette.blue.shadeDefault)
  ];
  return series;
}
