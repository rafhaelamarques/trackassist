// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trackassist/config/constants.dart';
import 'package:trackassist/reusable/widgets/icon_tile.dart';
import 'package:trackassist/reusable/widgets/map.dart';
import 'package:trackassist/reusable/buttons/outlined_select.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MouseCursor _cursor = SystemMouseCursors.basic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('TrackAssist'),
          centerTitle: false,
          backgroundColor: COR_PRIMARIA,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedSelect(label: "Início", onPressed: () {}),
                const SizedBox(width: 80),
                OutlinedSelect(label: "Prestadores", onPressed: () {}),
                const SizedBox(width: 80),
                OutlinedSelect(label: "Histórico", onPressed: () {}),
              ],
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: ListView(
                      itemExtent: 95,
                      children: [
                        IconTile(
                            icon: Icons.location_on_outlined,
                            onTap: _addMarker),
                        IconTile(icon: Icons.search, onTap: () {}),
                        IconTile(icon: Icons.map, onTap: () {}),
                        IconTile(icon: Icons.palette, onTap: () {}),
                        IconTile(icon: Icons.filter_list_alt, onTap: () {}),
                        IconTile(icon: Icons.info, onTap: () {}),
                      ],
                    ),
                  ),
                  MouseRegion(
                      cursor: _cursor,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: double.maxFinite,
                        // child: map(LatLng(0, 0), 13)),
                      )),
                ],
              ),
            ),
          ],
        ));
  }

  _addMarker() {
    setState(() => _cursor = SystemMouseCursors.click);
  }
}
