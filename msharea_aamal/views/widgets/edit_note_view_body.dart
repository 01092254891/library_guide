import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class MEditHasbViewBody extends StatefulWidget {
  const MEditHasbViewBody({Key? key, required this.mhasb}) : super(key: key);

  final MHasbModel mhasb;

  @override
  State<MEditHasbViewBody> createState() => _MEditHasbViewBodyState();
}

class _MEditHasbViewBodyState extends State<MEditHasbViewBody> {
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
              widget.mhasb.title = title ?? widget.mhasb.title;
              widget.mhasb.subTitle = content ?? widget.mhasb.subTitle;
              widget.mhasb.save();
              BlocProvider.of<MHasbCubit>(context).fetchAllMHasb();
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
            hint: widget.mhasb.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.mhasb.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          MEditHasbColorsList(
            mhasb: widget.mhasb,
          ),
        ],
      ),
    );
  }
}
