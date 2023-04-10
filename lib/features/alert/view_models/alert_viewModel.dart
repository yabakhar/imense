import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/models/alert_model.dart';
import '../views/create_room.dart';

class AlertViewModel extends ChangeNotifier {
  AlertViewModel();

  String levelValue = "1";
  ScrollController controller = ScrollController();
  void scrollRight() {
    double width = controller.position.viewportDimension;
    controller.animateTo(
      controller.offset - width,
      duration: const Duration(milliseconds: 100),
      curve: Curves.bounceInOut,
    );
  }

  void scrollLeft() {
    double width = controller.position.viewportDimension;
    controller.animateTo(
      controller.offset + width,
      duration: const Duration(milliseconds: 100),
      curve: Curves.bounceInOut,
    );
  }

  int timeValue = 20;

  changeTimeValue(int newValue) {
    timeValue = newValue;
    notifyListeners();
  }

  bool siteBookMark = true;
  changeSiteValue(bool newValue) {
    siteBookMark = !newValue;
    notifyListeners();
  }

  bool zoneBookMark = false;
  changeZoneValue(bool newValue) {
    zoneBookMark = !newValue;
    notifyListeners();
  }

  bool locationValue = true;
  changeLocationValue(bool newValue) {
    locationValue = !newValue;
    notifyListeners();
  }

  bool positionValue = false;
  changePositionValue(bool newValue) {
    positionValue = !newValue;
    notifyListeners();
  }

  /* Room Logic */
  String roomValue = "room 1.01";
  TextEditingController roomController = TextEditingController(text: "");
  List<String> roomValues = [
    "room 1.01",
    "room 1.02",
    "room 1.03",
    "room 1.04",
  ];

  void showSheet(BuildContext context) {
    roomController.text = "";
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (_) {
        return ChangeNotifierProvider.value(
          value: this,
          builder: (context, _) {
            return CreateRoom();
          },
        );
      },
    );
  }

  changeRoomValue(String newValue) {
    roomValue = newValue;
    notifyListeners();
  }

  addRoom(String value) {
    if (value.isNotEmpty && !roomValues.contains(value)) {
      roomValues.insert(0, value);
      changeRoomValue(value);
    }
  }

  createAlert() {
    print(Alert(
      room: roomValue,
      position: positionValue,
      time: timeValue,
      siteBookMark: siteBookMark,
      zoneBookMark: zoneBookMark,
      level: levelValue,
      location: locationValue,
    ).toJson());
  }
}
