import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';
import 'color_list_view.dart';

class EditKanonColorsList extends StatefulWidget {
  const EditKanonColorsList({super.key, required this.kanon});

  final KanonModel kanon;
  @override
  State<EditKanonColorsList> createState() => _EditKanonColorsListState();
}

class _EditKanonColorsListState extends State<EditKanonColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.kanon.color));
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
                widget.kanon.color = kColors[index].value;
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
