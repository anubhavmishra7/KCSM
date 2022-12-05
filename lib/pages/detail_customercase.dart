import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailedCustomercase extends StatelessWidget {
  const DetailedCustomercase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'C',
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
            onPressed: () {},
            icon: Icon(
              Icons.bookmark_border,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
          child: Container(
        child: Text('somethingggggg'),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_bulleted),
        backgroundColor: Colors.redAccent,
        onPressed: () {},
        shape: CircleBorder(
          side: BorderSide(color: Colors.redAccent),
        ),
      ),
    );
  }
}
