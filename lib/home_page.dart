
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart' ;


class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.228915,106.7339253),
    zoom: 14.4746,
  );
  
   static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(-6.228915,106.7339253),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);


  bool isSwitched = true;
  bool wedVal = false;

// Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
// void _add() {
//     var markerIdVal = MyWayToGenerateId();
//     final MarkerId markerId = MarkerId(markerIdVal);

//     // creating a new MARKER
//     final Marker marker = Marker(
//       markerId: markerId,
//       position: LatLng(
//         center.latitude + sin(_markerIdCounter * pi / 6.0) / 20.0,
//         center.longitude + cos(_markerIdCounter * pi / 6.0) / 20.0,
//       ),
//       infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
//       onTap: () {
//         _onMarkerTapped(markerId);
//       },
//     );

//     setState(() {
//       // adding a new marker to map
//       markers[markerId] = marker;
//     });
// }
   
  final gmaps = GoogleMap(
    scrollGesturesEnabled: true,
    tiltGesturesEnabled: true,
    rotateGesturesEnabled: true,
    myLocationEnabled: true,
    mapType: MapType.normal,
    zoomGesturesEnabled: true,
    initialCameraPosition: CameraPosition(
      target: LatLng(-6.228915,106.7339253),
      zoom: 15.0,
    ),    
    markers: Set<Marker>()
      ..add(Marker(
        markerId: MarkerId('test'),
        position: LatLng(-6.228915,106.7339253),
        infoWindow: InfoWindow(title: "Title", snippet: "test"),
        // onTap: () => ,
      )),
  );
  


  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Flutter'),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.5,
        // padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 20.0, // has the effect of softening the shadow
              spreadRadius: 5.0, // has the effect of extending the shadow
              offset: Offset(
                10.0, // horizontal, move right 10
                10.0, // vertical, move down 10
              ),
            )
          ],
          borderRadius: new BorderRadius.vertical(top: Radius.circular(18)),
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.white
          ]),
        ),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              value: wedVal,
              onChanged: (value){
                setState(() {
                  wedVal = value;
                });
              },
              title: new Text('3333'),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.green,
            ),
            CheckboxListTile(
              value: wedVal,
              onChanged: (value){
                setState(() {
                  wedVal = value;
                });
              },
              title: new Text('3333'),
              controlAffinity: ListTileControlAffinity.leading,
              // subtitle: new Text('Subtitle'),
              activeColor: Colors.green,
            ),
          ],
        ),

        ),
      body: gmaps
      
      
      // floatingActionButton: new FloatingActionButton(
      //   onPressed: (){
      //     showModalBottomSheet(
      //       context: context,
      //         builder: (BuildContext bc){
      //           return Container(
      //             child: new Wrap(
      //               children: <Widget>[
      //                 Switch(
      //                   value: isSwitched,
      //                   onChanged: (value){
      //                     setState(() {
      //                       isSwitched = value;
      //                     });
      //                   },
      //                   activeTrackColor: Colors.lightGreenAccent, 
      //                   activeColor: Colors.green,
      //                 ),
      //                 CheckboxListTile(
      //                   value: wedVal,
      //                   onChanged: (value){
      //                     setState(() {
      //                       wedVal = value;
      //                     });
      //                   },
      //                   title: new Text('3333'),
      //                   controlAffinity: ListTileControlAffinity.leading,
      //                   subtitle: new Text('Subtitle'),
      //                   secondary: new Icon(Icons.archive),
      //                   activeColor: Colors.red,
      //                 ),

      //                 new Padding(
      //                   padding: EdgeInsets.symmetric(vertical: 16.0),
      //                   child: RaisedButton(
      //                     shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(8),
      //                     ),
      //                     onPressed: () {
      //                       Navigator.of(context).pushNamed(HomePage.tag);
      //                     },
      //                     padding: EdgeInsets.all(12),
      //                     color: Colors.lightBlueAccent,
      //                     child: Text('Log In', style: TextStyle(color: Colors.white)),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           );
      //         }
      //     );
      //   },
      //   child: new Icon(Icons.add),
      // ),
    );
  }
}

// void _currentLocation() async {
//     Location _location = new Location();
//     Map<String, double> location;

//     try {
//       location = await _location.getLocation();
//     } on PlatformException catch (e) {
//       print(e.message);
//       location = null;
//     }

//     mapController.animateCamera(CameraUpdate.newCameraPosition(
//       CameraPosition(
//         bearing: 0,
//         target: LatLng(location["latitude"], location["longitude"]),
//         zoom: 17.0,
//       ),
//     ));

//     mapController.addMarker(
//       MarkerOptions(
//         position: LatLng(location["latitude"], location["longitude"]),
//       ),
//     );
//   }