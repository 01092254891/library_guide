import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class AEditAlomViewBody extends StatefulWidget {
  const AEditAlomViewBody({Key? key, required this.aalom}) : super(key: key);

  final AAlomModel aalom;

  @override
  State<AEditAlomViewBody> createState() => _AEditAlomViewBodyState();
}

class _AEditAlomViewBodyState extends State<AEditAlomViewBody> {
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
              widget.aalom.title = title ?? widget.aalom.title;
              widget.aalom.subTitle = content ?? widget.aalom.subTitle;
              widget.aalom.save();
              BlocProvider.of<AAlomCubit>(context).fetchAllAAlom();
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
            hint: widget.aalom.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.aalom.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          AEditAlomColorsList(
            aalom: widget.aalom,
          ),
        ],
      ),
    );
  }
}
