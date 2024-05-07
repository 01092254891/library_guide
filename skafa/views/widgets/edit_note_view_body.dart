import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class EditSkafaViewBody extends StatefulWidget {
  const EditSkafaViewBody({Key? key, required this.skafa}) : super(key: key);

  final SkafaModel skafa;

  @override
  State<EditSkafaViewBody> createState() => _EditSkafaViewBodyState();
}

class _EditSkafaViewBodyState extends State<EditSkafaViewBody> {
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
              widget.skafa.title = title ?? widget.skafa.title;
              widget.skafa.subTitle = content ?? widget.skafa.subTitle;
              widget.skafa.save();
              BlocProvider.of<SkafaCubit>(context).fetchAllSkafa();
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
            hint: widget.skafa.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.skafa.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          EditSkafaColorsList(
            skafa: widget.skafa,
          ),
        ],
      ),
    );
  }
}
