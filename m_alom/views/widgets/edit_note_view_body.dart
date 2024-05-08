import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class MEditAlomViewBody extends StatefulWidget {
  const MEditAlomViewBody({Key? key, required this.malom}) : super(key: key);

  final MAlomModel malom;

  @override
  State<MEditAlomViewBody> createState() => _MEditAlomViewBodyState();
}

class _MEditAlomViewBodyState extends State<MEditAlomViewBody> {
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
              widget.malom.title = title ?? widget.malom.title;
              widget.malom.subTitle = content ?? widget.malom.subTitle;
              widget.malom.save();
              BlocProvider.of<MAlomCubit>(context).fetchAllMAlom();
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
            hint: widget.malom.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.malom.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          MEditAlomColorsList(
            malom: widget.malom,
          ),
        ],
      ),
    );
  }
}
