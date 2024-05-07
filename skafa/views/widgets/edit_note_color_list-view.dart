import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';
import 'color_list_view.dart';

class EditSkafaColorsList extends StatefulWidget {
  const EditSkafaColorsList({super.key, required this.skafa});

  final SkafaModel skafa;
  @override
  State<EditSkafaColorsList> createState() => _EditSkafaColorsListState();
}

class _EditSkafaColorsListState extends State<EditSkafaColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.skafa.color));
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
                widget.skafa.color = kColors[index].value;
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
