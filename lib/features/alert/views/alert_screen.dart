import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/data/data.dart';
import '../../../core/widgets/bookmark_input.dart';
import '../../../core/widgets/custome_dropdown.dart';
import '../../../core/widgets/room_switch.dart';
import '../../../core/widgets/scrollable_radiobutton.dart';
import '../../../core/widgets/submited_button.dart';
import '../view_models/alert_viewModel.dart';
import '../widgets/custom_widget.dart';

class AlertScreen extends StatelessWidget {
  AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: const Color(0xffE3E3E3),
        leadingWidth: 150,
        actions: [
          InkWell(
            onTap: () {
              Navigator.maybePop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              child: const Icon(Icons.arrow_back_sharp, color: Colors.black),
            ),
          )
        ],
        leading: const Center(
          child: Text(
            'Manual alert',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ChangeNotifierProvider<AlertViewModel>(create: (context) {
        return AlertViewModel();
      }, builder: (context, _) {
        return Consumer<AlertViewModel>(builder: (context, model, _) {
          return Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomWidget(
                          title: "Site",
                          icontitle: const Icon(
                            Icons.info,
                            color: Color(0xffD1D1D1),
                            size: 20,
                          ),
                          widget: BookMarkInput(
                            checkMark: model.siteBookMark,
                            changeBookMark: () {
                              model.changeSiteValue(model.siteBookMark);
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        CustomWidget(
                          title: "Zone",
                          icontitle: const Icon(
                            Icons.info,
                            color: Color(0xffD1D1D1),
                            size: 20,
                          ),
                          widget: BookMarkInput(
                            checkMark: model.zoneBookMark,
                            changeBookMark: () {
                              model.changeZoneValue(model.zoneBookMark);
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        CustomWidget(
                          title: "Level",
                          widget: ScrollableRadioButton(
                            controller: model.controller,
                            scrollLeft: model.scrollLeft,
                            scrollRight: model.scrollRight,
                            radioButtonValue: (value) {
                              model.levelValue = value;
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        CustomWidget(
                          title: "Location",
                          widget: RoomSwitch(
                            selected: model.positionValue,
                            leftValue: "Room",
                            rightValue: "Equipment",
                            onclickleft: (bool value) {
                              model.changePositionValue(value);
                            },
                            onclickright: (bool value) {
                              model.changePositionValue(value);
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        CustomWidget(
                          title: "Room",
                          icontitle: InkWell(
                            onTap: () {
                              model.showSheet(context);
                            },
                            child: const Text(
                              "+ add",
                              style: TextStyle(color: Color(0xff568DDF)),
                            ),
                          ),
                          widget: CustomDropdown(
                            onChange: (value) {
                              model.changeRoomValue(value);
                            },
                            value: model.roomValue,
                            displayValue: "",
                            values: model.roomValues,
                          ),
                        ),
                        const SizedBox(height: 10),
                        CustomWidget(
                          title: "Position",
                          widget: RoomSwitch(
                            leftValue: "Inside",
                            rightValue: "Outside",
                            selected: model.locationValue,
                            onclickleft: (bool value) {
                              model.changeLocationValue(value);
                            },
                            onclickright: (bool value) {
                              model.changeLocationValue(value);
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        CustomWidget(
                          title: "Time expected to complete the job",
                          widget: CustomDropdown(
                            onChange: (value) {
                              model.changeTimeValue(value);
                            },
                            displayValue: "Minutes",
                            value: model.timeValue,
                            values: timeExpected,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SubmitedButton(
                  icon: Icons.send_rounded,
                  onsubmitediting: () {
                    model.createAlert();
                  },
                  text: 'Send alert',
                ),
              ],
            ),
          );
        });
      }),
    );
  }
}
