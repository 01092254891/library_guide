import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';
import 'color_list_view.dart';

class AEditAlomColorsList extends StatefulWidget {
  const AEditAlomColorsList({super.key, required this.aalom});

  final AAlomModel aalom;
  @override
  State<AEditAlomColorsList> createState() => _AEditAlomColorsListState();
}

class _AEditAlomColorsListState extends State<AEditAlomColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.aalom.color));
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
                widget.aalom.color = kColors[index].value;
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
