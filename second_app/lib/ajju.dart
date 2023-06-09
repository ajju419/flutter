import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Row(
          children: <Widget>[
            const Text("Abednego Technologies"),
            Image.network(
              "https://images.hindustantimes.com/rf/image_size_960x540/HT/p2/2019/04/24/Pictures/_7442f666-6663-11e9-b8c7-d9ea8f4e8ad0.jpg",
              width: 70,
              height: 70,
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.teal,
                Color.fromARGB(255, 13, 13, 13),
              ],
              begin: Alignment.center,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Image.network(
              "https://sm.mashable.com/mashable_in/seo/default/chris-evans-please-know-that-your-captain-america-is-being-s_ew2n.jpg"),
        ],
      ),
    );
  }
}
