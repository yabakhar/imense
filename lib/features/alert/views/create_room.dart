import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/widgets/submited_button.dart';
import '../view_models/alert_viewModel.dart';
import '../widgets/custom_widget.dart';

class CreateRoom extends StatelessWidget {
  CreateRoom({
    Key? key,
  }) : super(key: key);
  late AlertViewModel model;
  @override
  Widget build(BuildContext context) {
    model = Provider.of<AlertViewModel>(context);
    return DraggableScrollableSheet(
      expand: false,
      maxChildSize: 0.65,
      minChildSize: 0.65,
      initialChildSize: 0.65,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CustomWidget(
                title: "Create Room OR Equipment",
                widget: TextField(
                  controller: model.roomController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SubmitedButton(
                icon: Icons.add,
                onsubmitediting: () {
                  model.addRoom(model.roomController.text);
                  Navigator.maybePop(context);
                },
                text: 'Create',
              ),
            ],
          ),
        );
      },
    );
  }
}
