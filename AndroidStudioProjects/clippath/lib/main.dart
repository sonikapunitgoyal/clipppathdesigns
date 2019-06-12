import 'package:flutter/material.dart';
import 'clippath.dart';
import 'list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wavy image mask',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
          child: Scaffold(
        body: WavyHeaderImage(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.home,size: 30.0,),onPressed: (){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>MyHomePage()),
  );},),
   bottomNavigationBar: BottomNavigationBar(
          items: [
         
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border
          
              ),
              title: new Text('Favorites'),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.description,
                ),
                title: new Text('Reports')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.portrait,
                ),
                title: new Text('Patients')),
          ],
        ),
            
       
          
         ),textDirection: TextDirection.rtl,
    );
  }
}