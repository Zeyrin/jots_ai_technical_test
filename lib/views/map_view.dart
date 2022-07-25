import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jots/themes.dart';
import 'package:latlong2/latlong.dart';

//This view handlees the map displayed when clicking on the event's location
class MapViewScreen extends StatefulWidget {
  const MapViewScreen({Key? key}) : super(key: key);

  @override
  State<MapViewScreen> createState() => _MapViewScreenState();
}

class _MapViewScreenState extends State<MapViewScreen> {
  bool shouldPop = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return shouldPop;
      },
      child: Scaffold(
        floatingActionButton: const Padding(
          padding: EdgeInsets.all(8.0),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: MyThemes.noColor,
          title: const Text(
            "Jots HQ Location",
            style: TextStyle(
              color: MyThemes.secondary,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: MyThemes.secondary,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(48.856614, 2.3522219),
            zoom: 11.2,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c'],
            ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  point: LatLng(48.856614, 2.3622219),
                  width: 80,
                  height: 80,
                  builder: (context) => const FaIcon(
                    FontAwesomeIcons.mapPin,
                    color: MyThemes.primary,
                    size: 50,
                  ),
                ),
              ],
            ),
          ],
          nonRotatedChildren: [
            AttributionWidget.defaultWidget(
              source: 'OpenStreetMap contributors',
              onSourceTapped: null,
            ),
          ],
        ),
      ),
    );
  }
}
