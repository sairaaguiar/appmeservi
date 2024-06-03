import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meserviaplicacao/geolocalizacao.dart';

class Mapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Localizacao localizacao = Get.put(Localizacao());

    return GetBuilder<Localizacao>(
      init: localizacao,
      builder: (loc) {
        return GoogleMap(
          onMapCreated: (GoogleMapController controller) {
            localizacao.mapController = controller;
          },
          initialCameraPosition: CameraPosition(
            target: LatLng(loc.lat, loc.long),
            zoom: 15.0,
          ),
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          markers: loc.localizacaoAtualMarker != null ? {loc.localizacaoAtualMarker!} : {},
        );
      },
    );
  }
}