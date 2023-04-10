import 'package:flutter/material.dart';
import 'package:imense/features/home/widgets/sortHeader.dart';

import '../widgets/sort_item.dart';

class ObservationFillter extends StatelessWidget {
  ObservationFillter({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return DraggableScrollableSheet(
      expand: false,
      maxChildSize: 0.5,
      minChildSize: 0.5,
      initialChildSize: 0.5,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: Column(
            children: [
              const SortHeader(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SortItem(
                        icon: "assets/icons/date.svg",
                        title: 'Date',
                      ),
                      SortItem(
                        icon: "assets/icons/type.svg",
                        title: 'Type',
                      ),
                      SortItem(
                        icon: "assets/icons/status.svg",
                        title: 'Status',
                      ),
                      SortItem(
                        icon: "assets/icons/category.svg",
                        title: 'Category',
                      ),
                      SortItem(
                        icon: "assets/icons/subcategory.svg",
                        title: 'Subcategory',
                      ),
                      SortItem(
                        icon: "assets/icons/tag.svg",
                        title: 'Tags',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
