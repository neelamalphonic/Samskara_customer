// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class MapViewScreen extends StatefulWidget {
//   const MapViewScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MapViewScreen> createState() => _MapViewScreenState();
// }
//
// class _MapViewScreenState extends State<MapViewScreen> {
//   var deviceSize;
//
//   static const _initialCameraPosition=CameraPosition(
//     target: LatLng(37.7576171,-122.5776844),
//     zoom:11.5
//   );
//   late GoogleMapController _googlemapController;
//
//   @override
//   void dispose(){
//     _googlemapController.dispose();
//     super.dispose();
//   }
//
//   // void _onMapCreated(GoogleMapController controller) {
//   //  mapController = controller;
//   // }
//     @override
//   Widget build(BuildContext context) {
//       deviceSize = MediaQuery.of(context).size;
//       var height = deviceSize.height;
//       var width = deviceSize.width;
//     return
//        Scaffold(
//          body: Column(
//            children: [
//              Container(
//                width: width,
//                height: height,
//                child: GoogleMap(
//                  onMapCreated: (controller)=>_googlemapController=controller,
//                  myLocationButtonEnabled:false,
//                  zoomControlsEnabled:false,
//                  initialCameraPosition:_initialCameraPosition
//                ),
//              ),
//
//            ],
//          ),
//            floatingActionButton:Container(
//
//              width: width-90,
//              height: 45,
//              alignment: Alignment.center,
//              decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(25),
//                  color: const Color(0xFF1E2F59)),
//              child: TextButton(
//                  onPressed: () {},
//                  child: Text(
//                      "Save & Next",
//                      style: TextStyle(
//                          fontSize: 16,
//                          fontWeight:  FontWeight.bold,
//                          color: Color(0xFFFFFFFF)
//                      )
//                  )
//              ),
//            ),
//            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
//        );
//   }
// }
