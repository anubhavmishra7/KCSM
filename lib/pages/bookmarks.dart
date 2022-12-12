import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kcsm/data/casestudy_list.dart';
import 'package:kcsm/models/bookmarks.dart';
import 'package:kcsm/detailedcasestudy/detail_customercase.dart';
import 'package:kcsm/utilities/style.dart';

class Bookmarks extends StatelessWidget {
  const Bookmarks({super.key});

  @override
  Widget build(BuildContext context) {
    var caselists = Caselist.getBookmark();
    return Scaffold(
      // floatingActionButton: Container(
      //   width: MediaQuery.of(context).size.width,
      //   child: FloatingActionButton(
      //       onPressed: () {}, child: Image.asset("assets/images/bottom2.png")),
      // ),
      backgroundColor: Colors.redAccent,
      //appBar: AppBar(title: Text("hehe")),
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
              background: Stack(
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
          SliverFillRemaining(
            child: _buildContent(),
          )
        ],
      ),
    );
  }
}

Center _buildContent() {
  return Center(
      child: Container(
    // ignore: sort_child_properties_last
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
                    "     1 Bookmarked",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
                ],
              )
            ],
          ),
        ),
        Flexible(
          child: Container(
            child: ListView.builder(
                itemCount: caselists.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailedCustomercase(caselists[index])));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.025,
                          vertical: MediaQuery.of(context).size.height * 0.012),
                      child: Row(
                        children: [
                          Image.asset(
                            caselists[index].imgUrl,
                            width: MediaQuery.of(context).size.width * 0.25,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.65,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    caselists[index].title,
                                    style: kTitleStyle,
                                    //style: Theme.of(context).textTheme,
                                  ),
                                ),
                                // RichText(text: TextSpan(
                                //   ch
                                // ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        )
        // Container(
        //   height: 100,
        //   width: 400,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.circular(100))),
        //   child: Card(
        //     elevation: 10,
        //     child: Text(
        //       'SAP Dubai',
        //       style: kTitleStyle,
        //       textAlign: TextAlign.center,
        //     ),
        //   ),
        // )
      ],
    ),
    //color: Colors.yellow,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
  ));
}
