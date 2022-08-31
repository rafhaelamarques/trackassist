import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:trackassist/reusable/widgets/google_map.dart';
import 'package:trackassist/styles/custom_input_styles.dart';
import '../config/constants.dart';
import '../reusable/widgets/default_appbar.dart';
import 'dart:async';
import 'filter_dialog.dart';

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
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: ((context) => const ColorFilterDialog()));
            },
            icon: const Icon(LineIcons.filter),
          )
        ],
      ),
      drawer: SizedBox(
        width: 220,
        child: Drawer(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  children: const <Widget>[
                    SizedBox(
                      height: 100,
                      child: DrawerHeader(
                        decoration: BoxDecoration(
                          color: COR_PRIMARIA,
                        ),
                        child: Text(
                          'TrackAssist',
                          style: TextStyle(
                            color: WHITE,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading:
                          Icon(LineIcons.home, color: COR_PRIMARIA, size: 28),
                      title: Text('Home', style: TextStyle(fontSize: 16)),
                    ),
                    ListTile(
                      leading: Icon(LineIcons.alternateMapMarked,
                          color: COR_PRIMARIA, size: 28),
                      title:
                          Text('Prestadores', style: TextStyle(fontSize: 16)),
                    ),
                    ListTile(
                      leading: Icon(LineIcons.palette,
                          color: COR_PRIMARIA, size: 28),
                      title: Text('Filtros', style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Divider(),
              const ListTile(
                leading:
                    Icon(LineIcons.infoCircle, color: COR_PRIMARIA, size: 28),
                title: Text("Sobre", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
      body: Stack(children: [
        Column(
          children: [
            const SizedBox(height: 10),
            TextFormField(
              decoration: CustomInputStyles.iconLabel(
                  "Estado", const Icon(LineIcons.map)),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: CustomInputStyles.iconLabel(
                  "Município", const Icon(LineIcons.map)),
            ),
            const SizedBox(height: 10),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 140),
          child: googleMaps(
            _markers,
            _cameraPosition(),
            _onMapCreated,
            _canAddMarker,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                  backgroundColor: MaterialStateProperty.all(COR_PRIMARIA),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                  fixedSize: MaterialStateProperty.all(const Size(60, 60))),
              onPressed: _addMarker,
              child: const Icon(
                Icons.location_on_outlined,
                size: 40,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
