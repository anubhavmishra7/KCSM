import 'package:flutter/material.dart';
import 'package:kcsm/utilities/style.dart';
import 'package:pie_chart/pie_chart.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Container(
      //   width: MediaQuery.of(context).size.width,
      //   child: FloatingActionButton(
      //       onPressed: () {}, child: Image.asset("assets/images/bottom3.png")),
      // ),
      backgroundColor: Colors.redAccent,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            title: Text("Customer Case Study"),
            backgroundColor: Colors.redAccent,
            expandedHeight: 100,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Stack(
                  children: <Widget>[
                    Container(
                        //alignment: Alignment.center,
                        width: double.infinity,
                        //color: Colors.yellow,
                        //width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/images/landing2.png',
                          fit: BoxFit.fitWidth,
                        )),
                    Container(
                        //alignment: Alignment.center,
                        width: double.infinity,
                        //color: Colors.yellow,
                        //width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/images/landing3.png',
                          fit: BoxFit.fitWidth,
                        )),
                    // Container(
                    //     //alignment: Alignment.center,
                    //     width: double.maxFinite,
                    //     child: Image.asset(
                    //       'assets/images/landing3.png',
                    //       fit: BoxFit.fitWidth,
                    //     )),

                    // Positioned(
                    //     //width: MediaQuery.of(context).size.width,
                    //     child: Container(
                    //   width: double.maxFinite,
                    //   child: Image.asset(
                    //     'assets/images/landing3.png',
                    //     fit: BoxFit.fitWidth,
                    //   ),
                    // ))
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: _buildContents(),
          )
        ],
      ),
    );
  }
}

Map<String, double> dataMap = {
  "Oil & Petroleum(174)": 174,
  "Hospitality &Hotels(60)": 60,
  "Construction(60)": 60,
  "Agricultures & Plantations(15)": 15,
  "Chemical Industries(15)": 15,
};
Map<String, double> dataMap1 = {
  "Americas(15)": 174,
  "Asia Pacific(15)": 60,
  "Middle East/Africa(40)": 60,
  "Europe(15)": 15,
  "Others(15)": 15,
};

Center _buildContents() {
  return Center(
      child: SingleChildScrollView(
    child: Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "     Statistics",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                    ),
                    //IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 150,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Card(
              elevation: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Projects',
                            style: kTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '324',
                            style: kTitleStyle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'S4HANA Projects',
                            style: kTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '324',
                            style: kTitleStyle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Projects',
                            style: kTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '324',
                            style: kTitleStyle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'S4HANA Projects',
                            style: kTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '324',
                            style: kTitleStyle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            // height: 150,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Card(
              elevation: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Industry Wise Projects",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("This Year"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  PieChart(
                    dataMap: dataMap,
                    chartType: ChartType.ring,
                    chartRadius: 140,
                    chartLegendSpacing: 30,
                    initialAngleInDegree: -90,
                    centerText: "Total Projects\n324",
                    chartValuesOptions: ChartValuesOptions(
                        showChartValues: false,
                        chartValueStyle: defaultChartValueStyle),
                    legendOptions: LegendOptions(
                        legendPosition: LegendPosition.bottom,
                        showLegends: true),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            // height: 150,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Card(
              elevation: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "          Project Go Live Trend",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  PieChart(
                    dataMap: dataMap1,
                    chartType: ChartType.ring,
                    chartRadius: 140,
                    chartLegendSpacing: 30,
                    initialAngleInDegree: -90,
                    centerText: "Total Projects\n324",
                    chartValuesOptions: ChartValuesOptions(
                        showChartValues: false,
                        chartValueStyle: defaultChartValueStyle),
                    legendOptions: LegendOptions(
                        legendPosition: LegendPosition.bottom,
                        showLegends: true),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  ));
}
