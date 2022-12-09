import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kcsm/data/casestudy_list.dart';

class DetailedCase2 extends StatefulWidget {
  const DetailedCase2({super.key});

  @override
  State<DetailedCase2> createState() => _DetailedCase2State();
}

class _DetailedCase2State extends State<DetailedCase2> {
  bool _bookmarked = true;
  void _bookmarksList() {
    setState(() {
      if (_bookmarked) {
        _bookmarked = false;
      } else {
        _bookmarked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
          IconButton(
              onPressed: () {
                // setState(() {
                //   if (!Caselist.checkBookmark(widget.caselist)) {
                //     Caselist.addBookmark(widget.caselist);
                //   }
                // });
                _bookmarksList();
              },
              icon: (_bookmarked
                  ? const Icon(
                      Icons.bookmark_border,
                      color: Colors.black,
                    )
                  : const Icon(
                      Icons.bookmark,
                      color: Colors.black,
                    )))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 1,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          leading: Image.asset("assets/images/management3.png"),
                          title: Text(caselists[1].title),
                        );
                      }),
                    ),
                  ],
                ))),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          child: Icon(Icons.format_list_bulleted),
          backgroundColor: Colors.redAccent,
          onPressed: () {
            PopupMenuButton<Text>(
                itemBuilder: (context) => <PopupMenuEntry<Text>>[
                      const PopupMenuItem<Text>(
                        child: Text('Working a lot harder'),
                      ),
                    ]);
          },
        ),
      ),
    );
  }
}
