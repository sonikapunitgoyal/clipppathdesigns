import 'package:flutter/material.dart';
import 'package:path/path.dart';
class WavyHeaderImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return WavyHeaderImageState();
  }
}
class WavyHeaderImageState extends State<WavyHeaderImage>{
   List<String> images = [
    'nurse.png',
    'hospital.png',
   
  ];
  List<String> image = [
    'medical.png',
    'doctor.png',
   
  ];
  List<String> texts=['nurses','hospitals'];
   String  filename;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                color: Colors.blue,
                height: 350.0,
                width: MediaQuery.of(context).size.width,
              ),
              clipper: BottomWaveClipper(),
            ),
            Positioned(
              left: 20.0,
              top: 70.0,
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              height: 60.0,
            ),
            Positioned(
              left: 90.0,
              top: 70.0,
              height: 50.0,
              width: 300.0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.white),
                child: ListTile(
                  trailing: Icon(Icons.search, color: Colors.blue),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search here', border: InputBorder.none),
                  ),
                ),
              ),
            ),
            Positioned(
               left: 30.0,
                top: 200.0,
                width: 350.0,
                height: 550.0,
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,   mainAxisSpacing: 30.0,
                  crossAxisSpacing: 30.0,
physics: ClampingScrollPhysics(),  

                  padding: EdgeInsets.only(left: 5.0,right: 5.0),
                  children: images.map((imageName) {
                   
                    return //<--- on GridView item click, show PageView
                        Card(
                      elevation: 20.0,
                      color: Colors.white,
                      child:  Column(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Image.asset("assets/$imageName",height: 100.0,width: 100.0,),
                            Text('Doctor',textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),),
                         
                          ],
                        ),
                      
                    );
                  }).toList(),
                  
                  
                )),
          ],
        ),
        SizedBox(height: 20.0,),
       GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,   mainAxisSpacing: 30.0,
                  crossAxisSpacing: 30.0,
physics: ClampingScrollPhysics(),  

                  padding: EdgeInsets.all(30.0),
                  children: image.map((imageName) {
                    return //<--- on GridView item click, show PageView
                        Card(
                      elevation: 10.0,
                      color: Colors.white,
                      child:  Column(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.spaceAround,
                      
                          children: <Widget>[
                            Image.asset("assets/$imageName",height: 100.0,width: 100,),
                            
                            Text("Doctor",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),)
                          ],
                        ),
                      
                    );
                  }).toList(),
                )
      ],
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
