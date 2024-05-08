import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../test_model/book_model.dart';
import 'color_list_view.dart';

class EditBookColorsList extends StatefulWidget {
  const EditBookColorsList({super.key, required this.book});

  final BookModel book;
  @override
  State<EditBookColorsList> createState() => _EditBookColorsListState();
}

class _EditBookColorsListState extends State<EditBookColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.book.color));
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
                widget.book.color = kColors[index].value;
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
