import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class SEditNoteViewBody extends StatefulWidget {
  const SEditNoteViewBody({Key? key, required this.snote}) : super(key: key);

  final SNoteModel snote;

  @override
  State<SEditNoteViewBody> createState() => _SEditNoteViewBodyState();
}

class _SEditNoteViewBodyState extends State<SEditNoteViewBody> {
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
              widget.snote.title = title ?? widget.snote.title;
              widget.snote.subTitle = content ?? widget.snote.subTitle;
              widget.snote.save();
              BlocProvider.of<SNotesCubit>(context).fetchAllSNotes();
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
            hint: widget.snote.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.snote.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          SEditNoteColorsList(
            snote: widget.snote,
          ),
        ],
      ),
    );
  }
}
