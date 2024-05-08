import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';
import 'color_list_view.dart';

class EditTegaraColorsList extends StatefulWidget {
  const EditTegaraColorsList({super.key, required this.tegara});

  final TegaraModel tegara;
  @override
  State<EditTegaraColorsList> createState() => _EditTegaraColorsListState();
}

class _EditTegaraColorsListState extends State<EditTegaraColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.tegara.color));
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
                widget.tegara.color = kColors[index].value;
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
