import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:trackassist/reusable/widgets/google_map.dart';
import '../config/constants.dart';
import '../reusable/widgets/default_appbar.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  final Set<Marker> _markers = {};

  bool _canAddMarker = false;

  _onMapCreated(GoogleMapController googleMapController) {
    _controller.complete(googleMapController);
  }

  _cameraPosition() {
    return const CameraPosition(
      target: BELO_HORIZONTE,
      zoom: 16,
    );
  }

  _addMarker() {
    setState(() => _canAddMarker = !_canAddMarker);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        titleText: "TrackAssist",
        customActions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(LineIcons.filter),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: COR_PRIMARIA,
              ),
              child: Text(
                'TrackAssist',
                style: TextStyle(
                  color: WHITE,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(LineIcons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(LineIcons.alternateMapMarked),
              title: Text('Prestadores'),
            ),
            ListTile(
              leading: Icon(LineIcons.pallet),
              title: Text('Filtros'),
            ),
          ],
        ),
      ),
      body: Stack(children: [
        googleMaps(_markers, _cameraPosition(), _onMapCreated, _canAddMarker),
        ElevatedButton(
          onPressed: _addMarker,
          child: const Icon(
            Icons.location_on_outlined,
            size: 50,
          ),
        ),
      ]),
    );
  }
}
