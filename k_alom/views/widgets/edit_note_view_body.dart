import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class EditAlomViewBody extends StatefulWidget {
  const EditAlomViewBody({Key? key, required this.alom}) : super(key: key);

  final AlomModel alom;

  @override
  State<EditAlomViewBody> createState() => _EditAlomViewBodyState();
}

class _EditAlomViewBodyState extends State<EditAlomViewBody> {
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
              widget.alom.title = title ?? widget.alom.title;
              widget.alom.subTitle = content ?? widget.alom.subTitle;
              widget.alom.save();
              BlocProvider.of<AlomCubit>(context).fetchAllAlom();
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
            hint: widget.alom.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.alom.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          EditAlomColorsList(
            alom: widget.alom,
          ),
        ],
      ),
    );
  }
}
