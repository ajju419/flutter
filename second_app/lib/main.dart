import 'package:flutter/material.dart';
import 'ajju.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstWidget(),
    );
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({Key? key}) : super(key: key);

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.teal,
                    Color.fromARGB(255, 13, 13, 13),
                  ],
                ),
              ),
              child: Column(
                children: [
                  ClipOval(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/ajju.png"),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Ajaryya Bonam",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: Colors.yellow)),
                ],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondWidget()),
                );
              },
            ),
            ListTile(
              title: Text('Ref'),
              splashColor: Colors.pinkAccent,
              onTap: () {
                // Add your navigation logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
