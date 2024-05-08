import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../test_cubit/notes_cubit/notes_cubit.dart';
import '../../../test_model/book_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_book_color_list-view.dart';

class EditBookViewBody extends StatefulWidget {
  const EditBookViewBody({Key? key, required this.book}) : super(key: key);

  final BookModel book;

  @override
  State<EditBookViewBody> createState() => _EditBookViewBodyState();
}

class _EditBookViewBodyState extends State<EditBookViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.book.title = title ?? widget.book.title;
              widget.book.subTitle = content ?? widget.book.subTitle;
              widget.book.save();
              BlocProvider.of<BookCubit>(context).fetchAllBook();
              Navigator.pop(context);
            },
            title: 'EditBooks ',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.book.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.book.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          EditBookColorsList(
            book: widget.book,
          ),
        ],
      ),
    );
  }
}
