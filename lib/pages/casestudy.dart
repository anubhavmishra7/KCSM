import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kcsm/data/casestudy_list.dart';
import 'package:kcsm/detailedcasestudy/detailedcase2.dart';
import 'package:kcsm/detailedcasestudy/detailedcase3.dart';
import 'package:kcsm/models/bookmarks.dart';
import 'package:kcsm/pages/about_kaar.dart';
import 'package:kcsm/detailedcasestudy/detail_customercase.dart';
import 'package:kcsm/pages/statistics.dart';
import 'package:kcsm/utilities/style.dart';

class CustomerCaseStudy extends StatefulWidget {
  const CustomerCaseStudy({super.key});

  @override
  State<CustomerCaseStudy> createState() => _CustomerCaseStudyState();
}

class _CustomerCaseStudyState extends State<CustomerCaseStudy> {
  List<Widget> route = [
    DetailedCustomercase(caselists[0]),
    DetailedCase2(),
    DetailedCase3()
    //Statistics()
  ];
  //final List<Caselist> caselists;
  @override
  Widget build(BuildContext context) {
    //var caselists = Caselist.getBookmark();
    return Scaffold(
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.all(6.0),
      //   child: Container(
      //     width: double.maxFinite,
      //     //width: MediaQuery.of(context).size.width,
      //     child: FloatingActionButton(
      //         onPressed: () {},
      //         child: Image.asset("assets/images/bottom1.png")),
      //   ),
      // ),
      backgroundColor: Colors.redAccent,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            title: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // IconButton(
                //     onPressed: () {
                //       Navigator.of(context).pop();
                //     },
                //     icon: Icon(Icons.arrow_back)),
                Text('Customer Case Study')
              ],
            ),
            // bottom: PreferredSize(
            //   preferredSize: const Size.fromHeight(20),
            //   child: Container(
            //     //color: Colors.yellow,
            //     decoration: const BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(20),
            //             topRight: Radius.circular(20))),
            //     width: double.maxFinite,
            //     padding: const EdgeInsets.only(top: 5, bottom: 0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Text(
            //           "     128 Case Studies",
            //           style: TextStyle(fontWeight: FontWeight.bold),
            //         ),
            //         SizedBox(
            //           width: 150,
            //         ),
            //         IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            //         IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
            //       ],
            //     ),
            //   ),
            // ),
            backgroundColor: Colors.redAccent,
            pinned: true,
            expandedHeight: 100,
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
            // flexibleSpace: FlexibleSpaceBar(
            //   // title: Text(
            //   //   'Portfolio',
            //   //   style: TextStyle(color: Colors.black),
            //   // ),
            //   background: Container(
            //     color: const Color.fromARGB(175, 255, 82, 82),
            //     child: Stack(
            //       children: <Widget>[
            //         Positioned(
            //             left: 0,
            //             child: Container(
            //               //width: double.maxFinite,
            //               child: Image.asset(
            //                 'assets/images/landing2.png',
            //                 // width: double.maxFinite,
            //                 // height: double.maxFinite,
            //               ),
            //             )),
            //         // Positioned(
            //         //     child: Container(
            //         //   // width: double.maxFinite,
            //         //   child: Image.asset(
            //         //     'assets/images/landing2.png',
            //         //     width: double.maxFinite,
            //         //     height: double.maxFinite,
            //         //   ),
            //         // )),
            //         Positioned(
            //             left: 165,
            //             child: Container(
            //               //width: double.maxFinite,
            //               child: Image.asset(
            //                 'assets/images/landing3.png',
            //                 // width: double.maxFinite,
            //                 // height: double.maxFinite,
            //               ),
            //             )),
            //       ],
            //     ),
            //   ),
            // ),
          ),
          SliverFillRemaining(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  final myProducts = List<String>.generate(14, (i) => 'Product $i');

  Center _buildContent() {
    return Center(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "     128 Case Studies",
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
                          IconButton(
                              onPressed: () {
                                showBottomSheet<void>(
                                    context: context,
                                    builder: ((BuildContext context) {
                                      return Container(
                                        height: 300,
                                        color: Colors.amber,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              const Text('BottomSheet'),
                                              ElevatedButton(
                                                child: const Text(
                                                    'Close BottomSheet'),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }));
                                // PopupMenuButton<Text>(
                                //     itemBuilder: (context) =>
                                //         <PopupMenuEntry<Text>>[
                                //           const PopupMenuItem<Text>(
                                //             child: Text('Working a lot harder'),
                                //           ),
                                //         ]);
                              },
                              icon: Icon(Icons.filter_list))
                        ],
                      )
                    ],
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Card(
                                elevation: 10,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  margin: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.025,
                                      vertical:
                                          MediaQuery.of(context).size.height *
                                              0.012),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        caselists[index].imgUrl,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            FittedBox(
                                              child: Text(
                                                caselists[index].title,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),

                                                //style: Theme.of(context).textTheme,
                                              ),
                                            ),
                                            Text(
                                                "SAP Success Factors,S4 HANA\nUK"),

                                            // RichText(text: TextSpan(
                                            //   ch
                                            // ))
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        route[index]
                                                    // DetailedCustomercase(
                                                    //     caselists[index])
                                                    ));
                                          },
                                          icon: Icon(Icons.arrow_forward_ios))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }))

                    // ListView(children: [
                    //   Padding(
                    //     padding: const EdgeInsets.all(16.0),
                    //     child: SizedBox(
                    //       height: 120,
                    //       child: ListTile(
                    //           //visualDensity: VisualDensity(vertical: 4),
                    //           leading: Icon(Icons.circle_sharp),
                    //           subtitle:
                    //               Text('SAP Success Factors,S4HANA \n \nKSA'),
                    //           tileColor: Colors.white,
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(20)),
                    //           title: Text(
                    //             "Saudi Industrial Development \n Fund",
                    //             style: TextStyle(
                    //                 fontWeight: FontWeight.bold,
                    //                 fontFamily: "Plus Jakarta Sans",
                    //                 fontSize: 14),
                    //           ),
                    //           trailing: IconButton(
                    //             onPressed: () {
                    //               Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) =>
                    //                           DetailedCustomercase(
                    //                               caselists[1])));
                    //               // Navigator.push(
                    //               //     context,
                    //               //     MaterialPageRoute(
                    //               //         builder: (context) =>
                    //               //              DetailedCustomercase(
                    //               //               Caselist()
                    //               //              )));
                    //             },
                    //             icon: Icon(Icons.arrow_forward_ios_outlined),
                    //             color: Colors.red,
                    //           )),
                    //     ),
                    //   ),
                    //   SizedBox(
                    //     height: 30,
                    //   ),
                    // ]),
                    )
              ],
            )
            //         ListView(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: SizedBox(
            //         height: 120,
            //         child: ListTile(
            //             //visualDensity: VisualDensity(vertical: 4),
            //             leading: Icon(Icons.circle_sharp),
            //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
            //             tileColor: Colors.white,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(20)),
            //             title: Text(
            //               "Saudi Industrial Development \n Fund",
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontFamily: "Plus Jakarta Sans",
            //                   fontSize: 14),
            //             ),
            //             trailing: IconButton(
            //               onPressed: () {
            //                 Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                         builder: (context) => DetailedCustomercase()));
            //               },
            //               icon: Icon(Icons.arrow_forward_ios_outlined),
            //               color: Colors.red,
            //             )),
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(16.0),
            //       child: SizedBox(
            //         height: 120,
            //         child: ListTile(
            //             //visualDensity: VisualDensity(vertical: 4),
            //             leading: Icon(Icons.circle_sharp),
            //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
            //             tileColor: Colors.white,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(20)),
            //             title: Text(
            //               "Saudi Industrial Development \n Fund",
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontFamily: "Plus Jakarta Sans",
            //                   fontSize: 14),
            //             ),
            //             trailing: Icon(
            //               Icons.arrow_forward_ios_outlined,
            //               color: Colors.red,
            //             )),
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(16.0),
            //       child: SizedBox(
            //         height: 120,
            //         child: ListTile(
            //             //visualDensity: VisualDensity(vertical: 4),
            //             leading: Icon(Icons.circle_sharp),
            //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
            //             tileColor: Colors.white,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(20)),
            //             title: Text(
            //               "Saudi Industrial Development \n Fund",
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontFamily: "Plus Jakarta Sans",
            //                   fontSize: 14),
            //             ),
            //             trailing: Icon(
            //               Icons.arrow_forward_ios_outlined,
            //               color: Colors.red,
            //             )),
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(16.0),
            //       child: SizedBox(
            //         height: 120,
            //         child: ListTile(
            //             //visualDensity: VisualDensity(vertical: 4),
            //             leading: Icon(Icons.circle_sharp),
            //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
            //             tileColor: Colors.white,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(20)),
            //             title: Text(
            //               "Saudi Industrial Development \n Fund",
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontFamily: "Plus Jakarta Sans",
            //                   fontSize: 14),
            //             ),
            //             trailing: Icon(
            //               Icons.arrow_forward_ios_outlined,
            //               color: Colors.red,
            //             )),
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(16.0),
            //       child: SizedBox(
            //         height: 120,
            //         child: ListTile(
            //             //visualDensity: VisualDensity(vertical: 4),
            //             leading: Icon(Icons.circle_sharp),
            //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
            //             tileColor: Colors.white,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(20)),
            //             title: Text(
            //               "Saudi Industrial Development \n Fund",
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontFamily: "Plus Jakarta Sans",
            //                   fontSize: 14),
            //             ),
            //             trailing: Icon(
            //               Icons.arrow_forward_ios_outlined,
            //               color: Colors.red,
            //             )),
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(16.0),
            //       child: SizedBox(
            //         height: 120,
            //         child: ListTile(
            //             //visualDensity: VisualDensity(vertical: 4),
            //             leading: Icon(Icons.circle_sharp),
            //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
            //             tileColor: Colors.white,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(20)),
            //             title: Text(
            //               "Saudi Industrial Development \n Fund",
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontFamily: "Plus Jakarta Sans",
            //                   fontSize: 14),
            //             ),
            //             trailing: Icon(
            //               Icons.arrow_forward_ios_outlined,
            //               color: Colors.red,
            //             )),
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(16.0),
            //       child: SizedBox(
            //         height: 120,
            //         child: ListTile(
            //             //visualDensity: VisualDensity(vertical: 4),
            //             leading: Icon(Icons.circle_sharp),
            //             subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
            //             tileColor: Colors.white,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(20)),
            //             title: Text(
            //               "Saudi Industrial Development \n Fund",
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontFamily: "Plus Jakarta Sans",
            //                   fontSize: 14),
            //             ),
            //             trailing: Icon(
            //               Icons.arrow_forward_ios_outlined,
            //               color: Colors.red,
            //             )),
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //   ],
            // )
            // ListView.builder(
            //   itemCount: myProducts.length,
            //   itemBuilder: ((context, index) {
            //     return Column(
            //       children: const [
            //         ListTile(
            //           leading: Icon(Icons.circle_sharp),
            //           title: Text('hehe'),
            //         ),
            //         Card(
            //           child: Text('12'),
            //         ),
            //         Card(
            //           child: Text('14'),
            //         ),
            //       ],
            //     );
            //   }),
            // ),
            ));
  }
}
