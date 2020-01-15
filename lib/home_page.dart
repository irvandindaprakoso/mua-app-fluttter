
// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mua/profile_user.dart';
// import 'package:location/location.dart' ;


class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // set checkbox to false by default
  bool graduation = false;
  bool bridal = false;
  bool party = false;
  bool simple = false;
  bool photoshoot = false;
  bool hairdo = false;

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
   
  // final gmaps = GoogleMap(
  //   scrollGesturesEnabled: true,
  //   tiltGesturesEnabled: true,
  //   rotateGesturesEnabled: true,
  //   myLocationEnabled: true,
  //   mapType: MapType.normal,
  //   zoomGesturesEnabled: true,
  //   initialCameraPosition: CameraPosition(
  //     target: LatLng(-6.228915,106.7339253),
  //     zoom: 15.0,
  //   ),    
  //   markers: Set<Marker>()
  //     ..add(Marker(
  //       markerId: MarkerId('test'),
  //       icon: BitmapDescriptor.defaultMarker,
  //       position: LatLng(-6.228915,106.7339253),
  //       infoWindow: InfoWindow(
  //         title: "Title", 
  //         snippet: "test",
  //         onTap: (){
  //           // Navigator.of(context).pushNamed(RegisterPage.tag);
  //           Navigator.push(builder, (context)=> LoginPage(login:login))
  //         }
  //       ),
  //       // onTap: (){

  //       // }
  //     )),
  // );
  
  // bool showFab = true;  
  // @override
  // Widget build(BuildContext context) {
  //   return showFab
  //     ? FloatingActionButton(
  //         onPressed: () {
  //           var bottomSheetController = showBottomSheet(
  //             context: context,
  //             builder: (context) => Container(
  //               color: Colors.grey[900],
  //               height: 250,
  //             ));              
  //           showFoatingActionButton(false);              
  //           bottomSheetController.closed.then((value) {
  //             showFoatingActionButton(true);
  //           });
  //         },
  //       )
  //     : Container();
  // }  
  // void showFoatingActionButton(bool value) {
  //   setState(() {
  //     showFab = value;
  //   });
  // }


  
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Map'),
      ),

      // create bottom sheet in app
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.5,
        // create box in bottom sheet
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
        // create List View in box decoration
        child: ListView(
          children: <Widget>[
            // create checkbox in List view
            CheckboxListTile(
              value: graduation,
              onChanged: (value){
                setState(() {
                  graduation = value;
                });
              },
              title: new Text('Graduation'),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.green,
            ),
            CheckboxListTile(
              value: bridal,
              onChanged: (value){
                setState(() {
                  bridal = value;
                });
              },
              title: new Text('Bridal'),
              controlAffinity: ListTileControlAffinity.leading,
              // subtitle: new Text('Subtitle'),
              activeColor: Colors.green,
            ),
            CheckboxListTile(
              value: party,
              onChanged: (value){
                setState(() {
                  party = value;
                });
              },
              title: new Text('Party'),
              controlAffinity: ListTileControlAffinity.leading,
              // subtitle: new Text('Subtitle'),
              activeColor: Colors.green,
            ),
            CheckboxListTile(
              value: simple,
              onChanged: (value){
                setState(() {
                  simple = value;
                });
              },
              title: new Text('Simple'),
              controlAffinity: ListTileControlAffinity.leading,
              // subtitle: new Text('Subtitle'),
              activeColor: Colors.green,
            ),
            CheckboxListTile(
              value: photoshoot,
              onChanged: (value){
                setState(() {
                  photoshoot = value;
                });
              },
              title: new Text('Photoshoot'),
              controlAffinity: ListTileControlAffinity.leading,
              // subtitle: new Text('Subtitle'),
              activeColor: Colors.green,
            ),
            CheckboxListTile(
              value: hairdo,
              onChanged: (value){
                setState(() {
                  hairdo = value;
                });
              },
              title: new Text('Hairdo'),
              controlAffinity: ListTileControlAffinity.leading,
              // subtitle: new Text('Subtitle'),
              activeColor: Colors.green,
            ),
          ],
        ),

        ),
      // calling google maps API
      body: GoogleMap(
        scrollGesturesEnabled: true,
        tiltGesturesEnabled: true,
        rotateGesturesEnabled: true,
        myLocationEnabled: true,
        mapType: MapType.normal,
        zoomGesturesEnabled: true,
        initialCameraPosition: CameraPosition(
          // default position (sudirman)
          target: LatLng(-6.228915,106.7339253),
          zoom: 15.0,
        ),    
        // set marker
        markers: Set<Marker>()
          ..add(Marker(
            markerId: MarkerId('test'),
            icon: BitmapDescriptor.defaultMarker,
            position: LatLng(-6.228915,106.7339253),
            infoWindow: InfoWindow(
              title: "Tap me !", 
              snippet: "Hi can U Tap me ?",
              onTap: (){
                // Navigation after click infowindow above
                Navigator.pushNamed(context, ProfileUser.tag);
              },
            ),
            // onTap: (){

            // }
          )),
      ), 
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
