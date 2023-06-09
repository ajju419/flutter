import 'package:flutter/material.dart';
import 'package:firstapp/styledText.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  get width => 1;

  @override
  // Widget build(context) {
  //   return Container(
  //     decoration: const BoxDecoration(
  //       gradient: LinearGradient(colors: [
  //         Color.fromARGB(255, 58, 183, 154),
  //         Color.fromARGB(31, 177, 49, 49),
  //       ], begin: Alignment.centerLeft, end: Alignment.bottomRight),
  //     ),
  //     child: const StyledText(),
  //     alignment: Alignment.center,
  //     //width: width * 0.4,
  //     //margin: EdgeInsets.only(top: 10),
  //     child: Container(
  //       width: 150.0,
  //       height: 150.0,
  //       child: Stack(
  //         children: <Widget>[
  //           new Container(
  //             alignment: Alignment.center,
  //             color: const Color.fromARGB(255, 153, 150, 150),
  //             child: Text('Hello'),
  //           ),
  //           new Align(
  //             alignment: Alignment.bottomRight,
  //             child: FloatingActionButton(
  //                 child: new Icon(Icons.add), onPressed: () {}),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 58, 183, 154),
                Color.fromARGB(31, 177, 49, 49),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: StyledText(),
          alignment: Alignment.center,
        ),
        Container(
          width: 150.0,
          height: 150.0,
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 153, 150, 150),
                child: Text('Hello'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget ajjucontainer(context) {
    return Container(
      child: const Center(
        child: Text('''Hello hai every one
              wecome to flutter learning
              from ojas itp'''),
      ),
    );
  }

  Widget ajju1container(context) {
    return new Container(
      width: 150.0,
      height: 150.0,
      child: new Stack(
        children: <Widget>[
          new Container(
            alignment: Alignment.center,
            color: Colors.redAccent,
            child: Text('Hello'),
          ),
          new Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
                child: new Icon(Icons.add), onPressed: () {}),
          )
        ],
      ),
    );
  }
}
