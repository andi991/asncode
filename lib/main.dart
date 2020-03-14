import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Aplikasi Profilku"),
          leading: new IconButton(icon: new Icon(Icons.home, color: Colors.white,), onPressed: null),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.thumb_up, color: Colors.white,), onPressed: null),
            new IconButton(icon: new Icon(Icons.thumb_down, color: Colors.white,), onPressed: null),
          ],
        ),
        body:
        MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[50],
        padding: EdgeInsets.only(top:40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Column(
              children:[ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: NetworkImage("https://scontent.fdps5-1.fna.fbcdn.net/v/t1.0-9/p960x960/89511998_2574300496221958_5402363775061852160_o.jpg?_nc_cat=100&_nc_sid=85a577&_nc_oc=AQm6ZoViOJIO6rMDgDcVmoHN_E4NiyFRbH5jkc4cZWPua6fpMqfod9QmP27FMRY9mzU&_nc_ht=scontent.fdps5-1.fna&_nc_tp=6&oh=1b6e0a6f541c400afac74fb0e32c4437&oe=5E802993"),
                  width: 150, height: 150,
                ), ),
                Text("Kadek Andi Surya Negara", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  height: 2.0,
                ), ),
                Text("helo word :)", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  height: 1.0,
                ), ),

                Container(
                  margin: EdgeInsets.only(top:20),
                  width: 320,
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ContainIcon(0,"Singaraja",Icons.location_city, Colors.blueAccent),
                          ContainIcon(12,"Shopping",Icons.shopping_cart, Colors.blueAccent),
                        ],),
                      Column(
                        children: <Widget>[
                          ContainIcon(0,"Jembrana",Icons.home, Colors.blueAccent),
                          ContainIcon(12,"Undiksha",Icons.school, Colors.blueAccent),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}

//container  kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  final Color warna;
  const ContainIcon(this.atas,this.isi,this.icon,this.warna);
  @override
  Widget build(BuildContext context) {
    return Container(

        margin: EdgeInsets.only(left: 20,top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
          border: Border.all(width:3,color:Colors.greenAccent,),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              color: warna,
              size: 40,
            ),

            Container(
              color: Colors.orangeAccent,
              margin: EdgeInsets.only(top:24),
              width: 125,
              height: 30,
              child:TextBox(isi),
            ),
          ],
        )
    );
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(isi,style: TextStyle(
        height: 1.3,
        fontSize: 18,
        color: Colors.white,
      ),
      ),
    );
  }
}