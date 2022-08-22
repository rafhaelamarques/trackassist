import 'package:google_maps_flutter/google_maps_flutter.dart';

googleMaps(Set<Marker> markers, CameraPosition cameraPosition,
    void Function(GoogleMapController)? onCreated, bool addMarker) {
  return GoogleMap(
    onTap: (latLng) {
      if (addMarker) {
        markers.add(Marker(
          markerId: MarkerId(latLng.toString()),
          position: latLng,
        ));
      }
    },
    mapType: MapType.normal,
    initialCameraPosition: cameraPosition,
    onMapCreated: onCreated,
    markers: markers,
  );
}
