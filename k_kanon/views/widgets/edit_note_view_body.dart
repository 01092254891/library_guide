import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class EditKanonViewBody extends StatefulWidget {
  const EditKanonViewBody({Key? key, required this.kanon}) : super(key: key);

  final KanonModel kanon;

  @override
  State<EditKanonViewBody> createState() => _EditKanonViewBodyState();
}

class _EditKanonViewBodyState extends State<EditKanonViewBody> {
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
              widget.kanon.title = title ?? widget.kanon.title;
              widget.kanon.subTitle = content ?? widget.kanon.subTitle;
              widget.kanon.save();
              BlocProvider.of<KanonCubit>(context).fetchAllKanon();
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
            hint: widget.kanon.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.kanon.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          EditKanonColorsList(
            kanon: widget.kanon,
          ),
        ],
      ),
    );
  }
}
