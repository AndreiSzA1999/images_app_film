import 'package:flutter/material.dart';

class PicuresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: Colors.transparent,
          ),
          Positioned(
            top: height * 0.25,
            child: Container(
              height: height * 0.75,
              width: width,
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  Container(
                    height: height * 1.5,
                    child: Image(
                      image: AssetImage('assets/large.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              height: height * 0.25,
              width: width,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      spreadRadius: 6,
                      color: Colors.black54,
                      blurRadius: 20.0,
                      offset: Offset(0.0, 0.75))
                ],
              ),
              child: Image(
                image: AssetImage('assets/fixed.jpg'),
                fit: BoxFit.fill,
              )),
        ],
      ),
    );
  }
}
