import 'package:flutter/material.dart';
import 'package:kcsm/utilities/style.dart';

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

Center _buildContents() {
  return Center(
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
          height: 100,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: Card(
            elevation: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '   SAP Dubai',
                      style: kTitleStyle,
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
                  children: [
                    Text(
                      'SAP Dubai',
                      style: kTitleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ),
  ));
}
