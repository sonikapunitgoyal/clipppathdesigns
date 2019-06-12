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
    return  Scaffold(
        body: WavyHeaderImage(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton( child: Icon(Icons.home,size: 50.0,),onPressed: (){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>MyHomePage()),
  );},),
   bottomNavigationBar: BottomNavigationBar(
     
          items: [
         
            BottomNavigationBarItem(
              icon:  Image.asset('assets/star.png',height: 40.0,),
              title: new Text('Favorites'),
            ),
           
            
                
             BottomNavigationBarItem(
                icon: Image.asset('assets/reports.png',height: 40.0),
                title: new Text('Reports')),
                BottomNavigationBarItem(
                icon:  Image.asset('assets/patients.png',height: 40.0),
                title: new Text('Patients')),
          ],
        ),
        
            
       
          
         
    );
  }
}