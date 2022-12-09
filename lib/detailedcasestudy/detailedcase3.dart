import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class DetailedCase3 extends StatefulWidget {
  const DetailedCase3({super.key});

  @override
  State<DetailedCase3> createState() => _DetailedCase3State();
}

class _DetailedCase3State extends State<DetailedCase3> {
  bool _bookmarked = true;
  void _bookmarksList() {
    if (_bookmarked) {
      _bookmarked = false;
    } else {
      _bookmarked = true;
    }
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
                    ListTile(
                      leading: Image.asset("assets/images/management3.png"),
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
