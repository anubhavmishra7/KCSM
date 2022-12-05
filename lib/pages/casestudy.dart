import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kcsm/pages/detail_customercase.dart';
import 'package:kcsm/utilities/style.dart';

class CustomerCaseStudy extends StatefulWidget {
  const CustomerCaseStudy({super.key});

  @override
  State<CustomerCaseStudy> createState() => _CustomerCaseStudyState();
}

class _CustomerCaseStudyState extends State<CustomerCaseStudy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: "Bookmarks"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: "Statistics"),
          BottomNavigationBarItem(icon: Icon(Icons.web), label: "About Kaar"),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
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
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                //color: Colors.yellow,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "     128 Case Studies",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.redAccent,
            pinned: true,
            expandedHeight: 145,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(
              //   'Portfolio',
              //   style: TextStyle(color: Colors.black),
              // ),
              background: Container(
                color: const Color.fromARGB(175, 255, 82, 82),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        left: 0,
                        child: Container(
                          //width: double.maxFinite,
                          child: Image.asset(
                            'assets/images/landing2.png',
                            // width: double.maxFinite,
                            // height: double.maxFinite,
                          ),
                        )),
                    // Positioned(
                    //     child: Container(
                    //   // width: double.maxFinite,
                    //   child: Image.asset(
                    //     'assets/images/landing2.png',
                    //     width: double.maxFinite,
                    //     height: double.maxFinite,
                    //   ),
                    // )),
                    Positioned(
                        left: 165,
                        child: Container(
                          //width: double.maxFinite,
                          child: Image.asset(
                            'assets/images/landing3.png',
                            // width: double.maxFinite,
                            // height: double.maxFinite,
                          ),
                        )),
                  ],
                ),
              ),
            ),
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
                //color: Colors.yellow,
                //borderRadius: BorderRadius.circular(1)
                ),
            child: Container(
                child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 120,
                    child: ListTile(
                        //visualDensity: VisualDensity(vertical: 4),
                        leading: Icon(Icons.circle_sharp),
                        subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        title: Text(
                          "Saudi Industrial Development \n Fund",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 14),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailedCustomercase()));
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          color: Colors.red,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 120,
                    child: ListTile(
                        //visualDensity: VisualDensity(vertical: 4),
                        leading: Icon(Icons.circle_sharp),
                        subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        title: Text(
                          "Saudi Industrial Development \n Fund",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.red,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 120,
                    child: ListTile(
                        //visualDensity: VisualDensity(vertical: 4),
                        leading: Icon(Icons.circle_sharp),
                        subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        title: Text(
                          "Saudi Industrial Development \n Fund",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.red,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 120,
                    child: ListTile(
                        //visualDensity: VisualDensity(vertical: 4),
                        leading: Icon(Icons.circle_sharp),
                        subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        title: Text(
                          "Saudi Industrial Development \n Fund",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.red,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 120,
                    child: ListTile(
                        //visualDensity: VisualDensity(vertical: 4),
                        leading: Icon(Icons.circle_sharp),
                        subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        title: Text(
                          "Saudi Industrial Development \n Fund",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.red,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 120,
                    child: ListTile(
                        //visualDensity: VisualDensity(vertical: 4),
                        leading: Icon(Icons.circle_sharp),
                        subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        title: Text(
                          "Saudi Industrial Development \n Fund",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.red,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 120,
                    child: ListTile(
                        //visualDensity: VisualDensity(vertical: 4),
                        leading: Icon(Icons.circle_sharp),
                        subtitle: Text('SAP Success Factors,S4HANA \n \nKSA'),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        title: Text(
                          "Saudi Industrial Development \n Fund",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Plus Jakarta Sans",
                              fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.red,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
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
                )));
  }
}
