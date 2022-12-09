import 'package:flutter/material.dart';

class AboutKaar extends StatelessWidget {
  const AboutKaar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Container(
      //   width: MediaQuery.of(context).size.width,
      //   child: FloatingActionButton(
      //       onPressed: () {}, child: Image.asset("assets/images/bottom4.png")),
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
            title: Text("Customer Case Study"),
            backgroundColor: Colors.redAccent,
            expandedHeight: 90,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                  child: Stack(
                children: [
                  Positioned(
                      //height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                          child: Image.asset('assets/images/landing2.png'))),
                  Positioned(
                      //height: MediaQuery.of(context).size.height,
                      //width: MediaQuery.of(context).size.width,
                      child: Container(
                    width: double.maxFinite,
                    child: Image.asset(
                      'assets/images/landing3.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ))
                ],
              )),
            ),
          ),
          SliverFillRemaining(
            child: _buildContents1(),
          )
        ],
      ),
    );
  }
}

Center _buildContents1() {
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
                      "     About Kaar",
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
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/aboutkaar1.png",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 98.0, left: 10),
                    child: Image.asset(
                      "assets/images/aboutkaar2.png",
                      scale: 2.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Container(
                //color: Colors.blue,
                child: RichText(
                    text: const TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans'),
              children: <TextSpan>[
                TextSpan(
                    text: "Our Vision\n\n",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                TextSpan(
                    text:
                        'To transform our customer organizations by offering \nbest-in-class SAP services and to become the best\nand largest pure-play SAP Consulting company in the\nworld.'),
                TextSpan(
                    text: "\n\nOur Mission\n\n",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                TextSpan(
                    text:
                        'To remain a socially responsible corporate entity, \nwhich will instill a sense of pride, joy and \naccomplishment, in every facet of its interaction, to \neveryone associated, be it the employees, customers, \nvendors or stakeholders.')
              ],
            ))
                // Flexible(
                //   fit: FlexFit.tight,
                //   child: Stack(
                //     children: [
                //       Container(
                //         child: Positioned(
                //             top: 5,
                //             left: 7,
                //             child: Image.asset(
                //               "assets/images/aboutkaar1.png",
                //               scale: 1.6,
                //             )),
                //       ),
                //       Positioned(
                //           top: 120,
                //           left: 13,
                //           child: Image.asset(
                //             "assets/images/aboutkaar2.png",
                //             scale: 2,
                //           )),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 13.0, top: 265),
                //         child: Container(
                //             alignment: Alignment.topLeft,
                //             color: Colors.white,
                //             child: RichText(
                //                 text: TextSpan(
                //                     style: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 14,
                //                         fontFamily: 'Plus Jakarta Sans'),
                //                     children: <TextSpan>[
                //                   TextSpan(
                //                       text: "Our Vision\n\n",
                //                       style: TextStyle(
                //                           color: Colors.redAccent,
                //                           fontWeight: FontWeight.bold,
                //                           fontSize: 16)),
                //                   TextSpan(
                //                       text:
                //                           'To transform our customer organizations by offering \nbest-in-class SAP services and to become the best\nand largest pure-play SAP Consulting company in the\nworld.'),
                //                   TextSpan(
                //                       text: "\n\nOur Mission\n\n",
                //                       style: TextStyle(
                //                           color: Colors.redAccent,
                //                           fontWeight: FontWeight.bold,
                //                           fontSize: 16)),
                //                   TextSpan(
                //                       text:
                //                           'To remain a socially responsible corporate entity, \nwhich will instill a sense of pride, joy and \naccomplishment, in every facet of its interaction, to \neveryone associated, be it the employees, customers, \nvendors or stakeholders.')
                //                 ]))),
                //       ),
                //       Flexible(
                //         child: Padding(
                //           padding:
                //               const EdgeInsets.only(top: 510.0, left: 30, right: 30),
                //           child: Container(
                //             height: 100,
                //             child: Card(
                //               // decoration: BoxDecoration(color: Colors.white38),
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                 children: [
                //                   Text('SAP-Quality\n Awards'),
                //                   Text('Business \nAwards'),
                //                   Text("Happy\nCustomers")
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 13.0, top: 600),
                //         child: Container(
                //           alignment: Alignment.topLeft,
                //           color: Colors.white,
                //           child: RichText(
                //               text: const TextSpan(
                //                   style: TextStyle(
                //                       color: Colors.black,
                //                       fontSize: 14,
                //                       fontFamily: 'Plus Jakarta Sans'),
                //                   children: <TextSpan>[
                //                 TextSpan(
                //                     text: "Management Team\n\n",
                //                     style: TextStyle(
                //                         color: Colors.redAccent,
                //                         fontWeight: FontWeight.bold,
                //                         fontSize: 16)),
                //               ])),
                //         ),
                //       ),

                //       // Padding(
                //       //   padding: const EdgeInsets.only(top: 640.0),
                //       //   child: Container(

                //       //       // color: Colors.yellow,
                //       //       child: Column(
                //       //     children: [
                //       //       ListTile(
                //       //         leading: Icon(Icons.circle),
                //       //         title: Text("Kaar"),
                //       //       )
                //       //     ],
                //       //   )),
                //       // )
                //     ],
                //   ),
                // ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: Container(
              padding: EdgeInsets.all(26),
              decoration: BoxDecoration(
                  color: Color.fromARGB(144, 235, 228, 228),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: <TextSpan>[
                        TextSpan(text: "SAP Quality\nAwards"),
                        TextSpan(
                            text: "\n16+",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold))
                      ])),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: <TextSpan>[
                        TextSpan(text: "Business\nAwards"),
                        TextSpan(
                            text: "\n10+",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold))
                      ])),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: <TextSpan>[
                        TextSpan(text: "Happy\nCustomers"),
                        TextSpan(
                            text: "\n26+",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold))
                      ])),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Text("Management Team",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ],
            ),
          ),
          ListView(
            itemExtent: 80,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              ListTile(
                leading: Image.asset(
                  "assets/images/management1.png",
                ),
                title: Text("Maran N"),
                subtitle: Text("CEO & FOUNDER"),
              ),
              ListTile(
                leading: Image.asset("assets/images/management2.png"),
                title: Text("Ratnakumar N"),
                subtitle: Text("CO-FOUNDER & DIRECTOR"),
              ),
              ListTile(
                leading: Image.asset("assets/images/management3.png"),
                title: Text("Selva M"),
                subtitle: Text("CO-FOUNDER & DIRECTOR"),
              ),
              ListTile(
                leading: Image.asset("assets/images/management4.png"),
                title: Text("Guardian George"),
                subtitle: Text("CO-FOUNDER & DIRECTOR"),
              ),
              ListTile(
                leading: Image.asset("assets/images/management5.png"),
                title: Text("Frans Damen"),
                subtitle: Text("DIRECTOR"),
              ),
              ListTile(
                leading: Image.asset("assets/images/management6.png"),
                title: Text("Balakrishnan V"),
                subtitle: Text("DIRECTOR"),
              ),
            ],
          )
          // Container(
          //   child: Column(
          //     children: [
          //       ListTile(
          //         leading: Image.asset("assets/images/aboutkaar2.png"),
          //       ),
          //       ListTile(
          //         leading: Image.asset("assets/images/aboutkaar2.png"),
          //       ),
          //       ListTile(
          //         leading: Image.asset("assets/images/aboutkaar2.png"),
          //       )
          //     ],
          //   ),
          ,
          SizedBox(
            height: 60,
          )
        ],
      ),
    ),
  ));
}
