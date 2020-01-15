
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ProfileUser extends StatefulWidget {
  static String tag = 'profile-page';
  
  ProfileUser({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProfileUserState createState() => new _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl = 'https://raw.githubusercontent.com/irvandindaprakoso/mua-app-fluttter/master/lib/assets/photo6334703250225342831.jpg';

    return new Stack(children: <Widget>[
      new Container(color: Colors.purple[300]),
      new Image.network(imgUrl, fit: BoxFit.fill,),
      new BackdropFilter(
      filter: new ui.ImageFilter.blur(
      sigmaX: 6.0,
      sigmaY: 6.0,
      ),
      child: new Container(
      decoration: BoxDecoration(
      color:  Colors.purple[300].withOpacity(0.9),
      // borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),)),
      new Scaffold(
          appBar: new AppBar(
            title: new Text(widget.title),
            centerTitle: false,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
          // drawer: new Drawer(child: new Container(),),
          backgroundColor: Colors.transparent,
          body: new Center(
            child: new Column(
              children: <Widget>[
                new SizedBox(height: _height/12,),
                new CircleAvatar(radius:_width<_height? _width/4:_height/4,backgroundImage: NetworkImage(imgUrl),),
                new SizedBox(height: _height/25.0,),
                new Text('Jauzaa Maylia Suhendro', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: _width/15, color: Colors.white),),
                new Padding(padding: new EdgeInsets.only(top: _height/30, left: _width/8, right: _width/8),
                  child:new Text('I love Jasson Mamoa so much \n Marvel Lovers \n Cat Lovers',
                    style: new TextStyle(fontWeight: FontWeight.normal, fontSize: _width/25,color: Colors.white),textAlign: TextAlign.center,) ,),
                new Divider(height: _height/30,color: Colors.white,),
                new Row(
                  children: <Widget>[
                    rowCell(Icons.message,'Text'),
                    rowCell(Icons.email, 'Email'),
                    rowCell(Icons.call, 'Call'),
                  ],),
                new Divider(height: _height/30,color: Colors.white),
                // new Padding(padding: new EdgeInsets.only(left: _width/8, right: _width/8), child: new FlatButton(onPressed: (){},
                //   child: new Container(child: new Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                //     new Icon(Icons.person),
                //     new SizedBox(width: _width/30,),
                //     new Text('FOLLOW')
                //   ],)),color: Colors.blue[50],),),
              ],
            ),
          )
      )
    ],);
  }

  Widget rowCell(IconData icon, String type) => new Expanded(child: new Column(children: <Widget>[
    // new Text('$icon',style: new TextStyle(color: Colors.white, fontSize: 20),),
    new Icon(icon),
    new Text(type,style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))
  ],));
}