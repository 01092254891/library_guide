import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class EditHasbViewBody extends StatefulWidget {
  const EditHasbViewBody({Key? key, required this.hasb}) : super(key: key);

  final HasbModel hasb;

  @override
  State<EditHasbViewBody> createState() => _EditHasbViewBodyState();
}

class _EditHasbViewBodyState extends State<EditHasbViewBody> {
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
              widget.hasb.title = title ?? widget.hasb.title;
              widget.hasb.subTitle = content ?? widget.hasb.subTitle;
              widget.hasb.save();
              BlocProvider.of<HasbCubit>(context).fetchAllHasb();
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
            hint: widget.hasb.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.hasb.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          EditHasbColorsList(
            hasb: widget.hasb,
          ),
        ],
      ),
    );
  }
}
