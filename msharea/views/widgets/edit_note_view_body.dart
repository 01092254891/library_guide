import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class AEditNoteViewBody extends StatefulWidget {
  const AEditNoteViewBody({Key? key, required this.anote}) : super(key: key);

  final ANoteModel anote;

  @override
  State<AEditNoteViewBody> createState() => _AEditNoteViewBodyState();
}

class _AEditNoteViewBodyState extends State<AEditNoteViewBody> {
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
              widget.anote.title = title ?? widget.anote.title;
              widget.anote.subTitle = content ?? widget.anote.subTitle;
              widget.anote.save();
              BlocProvider.of<ANotesCubit>(context).fetchAllANotes();
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
            hint: widget.anote.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.anote.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          AEditNoteColorsList(
            anote: widget.anote,
          ),
        ],
      ),
    );
  }
}
