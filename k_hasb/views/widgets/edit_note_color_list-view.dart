import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';
import 'color_list_view.dart';

class EditHasbColorsList extends StatefulWidget {
  const EditHasbColorsList({super.key, required this.hasb});

  final HasbModel hasb;
  @override
  State<EditHasbColorsList> createState() => _EditHasbColorsListState();
}

class _EditHasbColorsListState extends State<EditHasbColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.hasb.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.hasb.color = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
