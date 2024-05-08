import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';
import 'edit_note_color_list-view.dart';

class MEditEdaraViewBody extends StatefulWidget {
  const MEditEdaraViewBody({Key? key, required this.medara}) : super(key: key);

  final MEdaraModel medara;

  @override
  State<MEditEdaraViewBody> createState() => _MEditEdaraViewBodyState();
}

class _MEditEdaraViewBodyState extends State<MEditEdaraViewBody> {
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
              widget.medara.title = title ?? widget.medara.title;
              widget.medara.subTitle = content ?? widget.medara.subTitle;
              widget.medara.save();
              BlocProvider.of<MEdaraCubit>(context).fetchAllMEdara();
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
            hint: widget.medara.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.medara.subTitle,
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          MEditEdaraColorsList(
            medara: widget.medara,
          ),
        ],
      ),
    );
  }
}
