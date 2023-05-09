import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controller/global_controller.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  String city = "";
  String date = DateFormat("yMMMd", 'ko').format(DateTime.now());
  String dateWeek = DateFormat("E", 'ko').format(DateTime.now());

  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  void initState() {
    getAddress(globalController.getLattitude().value,
        globalController.getLongitude().value);
    super.initState();
  }

  void getAddress(latitude, longitude) async {
    List<Placemark> placemark =
        await placemarkFromCoordinates(latitude, longitude);
    Placemark place = placemark[0];

    setState(() {
      city = place.locality!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.topLeft,
            child: Text(
              city,
              style: const TextStyle(
                fontSize: 35,
              ),
            )),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Text(date,
                  style: TextStyle(
                      fontSize: 15, color: Colors.grey.shade700, height: 1.5)),
              const SizedBox(
                width: 5,
              ),
              Text('$dateWeek요일',
                  style: TextStyle(
                      fontSize: 15, color: Colors.grey.shade700, height: 1.5)),
            ],
          ),
        ),
      ],
    );
  }
}
